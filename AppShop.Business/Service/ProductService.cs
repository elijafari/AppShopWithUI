using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using AutoMapper;
using Microsoft.AspNetCore.Hosting;
using Microsoft.EntityFrameworkCore;
using System.Diagnostics;
using System.Threading.Tasks;

namespace AppShop.Business.Service
{
    public class ProductService : IProductService
    {
        AppShopDBContext db;
        private readonly IMapper mapper;
        private readonly UploadPathProvider uploadPathProvider;
        public ProductService(AppShopDBContext _db, IMapper _mapper, UploadPathProvider _uploadPathProvider)
        {
            db = _db;
            mapper = _mapper;
            uploadPathProvider = _uploadPathProvider;
        }
        public bool Add(InProduct input)
        {
            var id = db.Products.Max(x => x.Id) + 1;
            var entity = mapper.Map<Product>(input);
            var fileName = $"product_{id}";
            entity.PathImg = CopyImage(input, fileName).Result;
            ValidtionData(entity);
            entity.Slug=SlugHelper.GenerateSlug(entity.Name);
            db.Products.Add(entity);
            db.SaveChanges();
            return true;
        }
        public bool Update(InProduct input)
        {
            var old = db.Products.AsNoTracking().FirstOrDefault(x => x.Id == input.Id);
            var entity = mapper.Map<Product>(input);
            var fileName = $"product_{input.Id}";
            var pathImg = CopyImage(input, fileName).Result;
            if (!string.IsNullOrEmpty(pathImg))
                entity.PathImg = pathImg;
            else
                entity.PathImg = old.PathImg;
                ValidtionData(entity);
            entity.Slug = SlugHelper.GenerateSlug(entity.Name);
            db.Products.Update(entity);
            db.SaveChanges();
            return true;


        }
        private async Task<string> CopyImage(InProduct input, string fileName)
        {
            if (input.File != null)
            {
                var extension = Path.GetExtension(input.File.FileName);
                fileName = fileName + extension;

                var savePath = Path.Combine(uploadPathProvider.Path, fileName);
                var file = new FileInfo(savePath);
                if (file.Exists)
                    file.Delete();
                using (var stream = new FileStream(savePath, FileMode.Create))
                {
                  await  input.File.CopyToAsync(stream);
                    return $"/uploads/products/{fileName}";
                }
            }
                return string.Empty;
        }
        private void ValidtionData(Product entity)
        {
            if (entity.Code == 0)
            {
                throw new PersianException(Utility.GetMsgRequired("کد"));
            }
            else if (db.Products.Any(x => x.Code == entity.Code && x.Id != entity.Id))
            {
                throw new PersianException(Utility.GetMsgRepert("کد"));
            }
            if (entity.Name == null || entity.Name.Length == 0)
            {
                throw new PersianException(Utility.GetMsgRequired("نام"));
            }

            else if (db.Products.Any(x => x.Name == entity.Name && x.Id != entity.Id))
            {
                throw new PersianException(Utility.GetMsgRepert("نام"));
            }
            if (entity.CategoryId == 0)
            {
                throw new PersianException(Utility.GetMsgRequired("گروه کالا"));

            }
            if (entity.Price == 0)
            {
                throw new PersianException(Utility.GetMsgRequired("قیمت"));
            }
            if (entity.PathImg == null)
            {
                throw new PersianException(Utility.GetMsgRequired("عکس"));
            }
        }

        public DataView GetAll(DataRequest param)
        {
            var result = new DataView(param.Take, param.PageNumber);

            var query = from p in db.Products
                        select p;

            if (param != null)
                if (param.Filter != null)
                {
                    if (param.Filter.CategoryId != 0)
                        query = query.Where(x => x.CategoryId == param.Filter.CategoryId);
                    if (param.Filter.ProductName != string.Empty)
                        query = query.Where(x => x.Name.Contains(param.Filter.ProductName));
                    if (param.Filter.FromPrice != 0)
                        query = query.Where(x => x.Price >= param.Filter.FromPrice);
                    if (param.Filter.ToPrice != 0)
                        query = query.Where(x => x.Price <= param.Filter.ToPrice);
                }

            result.Data = query.OrderBy(x => x.Code).Skip(result.StartRow).Take(param.Take).Cast<object>().ToList();
            result.TotalCount = query.Count();
            return result;
        }
        public List<Product> GetAll()
        {
            return db.Products.ToList();
        }
        public Product GetById(int id)
        {
            return db.Products.Where(x => x.Id == id).SingleOrDefault();
        }
        public Product GetBySlug(string slug)
        {
          var data= db.Products.Where(x => x.Slug == slug).AsNoTracking().SingleOrDefault();
           data.CategoryName = db.Categories.FirstOrDefault(x=>x.Id==data.CategoryId)?.Name;
            return data;
        }
        public bool DeleteAll()
        {
            db.Products.RemoveRange(db.Products.ToList());
            return true;

        }
        public bool ConvertSlug()
        {
            var products = db.Products.ToList();
            foreach (var entity in products)
            {
                entity.Slug = SlugHelper.GenerateSlug(entity.Name);

            }
            db.SaveChanges();
            return true;
        }
    }
}
