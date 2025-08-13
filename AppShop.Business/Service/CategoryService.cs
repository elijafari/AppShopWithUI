using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
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
        public bool Add(Category entity)
        {
            db.Categories.Add(entity);
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
                    Name = "خانگی",
                },
                new Category()
                {
                    Code = 2,
                    Name = "صنعتی",
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
