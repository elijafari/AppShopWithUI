using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using AutoMapper;
using Microsoft.AspNetCore.Hosting;
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
            db.Products.Add(entity);
            db.SaveChanges();
            return true;
        }
        public bool Update(InProduct input)
        {
            var entity = mapper.Map<Product>(input);
            var fileName = $"product_{input.Id}";
            entity.PathImg = CopyImage(input, fileName).Result;
            ValidtionData(entity);
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

                using (var stream = new FileStream(savePath, FileMode.Create))
                {
                   await input.File.CopyToAsync(stream);
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
        public bool DeleteAll()
        {
            db.Products.RemoveRange(db.Products.ToList());
            return true;

        }
        //public bool ConvertImage()
        //{
        //    var products = db.Products.ToList();
        //    foreach (var product in products)
        //    {
        //        var fileName = $"product_{product.Id}.jpg";
        //        var filePath = Path.Combine(uploadPathProvider.Path, fileName);

        //        File.WriteAllBytes(filePath, product.image); // ذخیره فایل از دیتابیس

        //        product.PathImg = "/uploads/products/" + fileName; // ذخیره مسیر جدید
        //                                                           // product.image = null; // در صورت تمایل حذف ستون Blob
        //    }
        //    db.SaveChanges();
        //    return false;


        //}
    }
}
