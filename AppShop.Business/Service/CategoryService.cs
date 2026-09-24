using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using AutoMapper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Service
{
    public class CategoryService : ICategoryService
    {
        AppShopDBContext db;    
        public CategoryService(AppShopDBContext _db) {
        db= _db;
        }
        public bool Add(InCategory input)
        {
            var entity = new Category();
            entity.Name = input.Name;
            db.Categories.Add(entity);
            db.SaveChanges();
            return true;
        }
        public bool Update(InCategoryById input)
        {
            var entity = db.Categories.SingleOrDefault(c => c.Id == input.Id);
            entity.Name = input.Name;
            db.Categories.Update(entity);
            db.SaveChanges();
            return true;
        }
        public bool Delete(int id)
        {
            if(db.Products.Any(p => p.CategoryId == id))
                throw new PersianException("برای گروه کالا مورد نظر کالا تعریف شده است امکان حذف وجود ندارد");

            var entity = db.Categories.SingleOrDefault(c => c.Id == id);
            db.Categories.Remove(entity);
            db.SaveChanges();
            return true;
        }
        public bool AddRange()
        {
            var list= new List<Category>
            {
                new Category()
                {
                    Code = 1,
                    Name = "ساختمانی",
                },
                new Category()
                {
                    Code = 2,
                    Name = "صنعتی",
                },
                new Category()
                {
                    Code = 3,
                    Name = "روشنایی",
                },
                new Category()
                {
                    Code =4,
                    Name = "ابزار",
                }
            };
            db.Categories.AddRange(list);
            db.SaveChanges();
            return true;
        }
        public List<Category> GetAll(bool tagAll)
        {
          var list= db.Categories.OrderBy(c => c.Name).ToList();
            if(tagAll) 
                list.Insert(0,new Category() { Id=0, Name="همه کالا ها"});
            return list;
        }
    }
}
