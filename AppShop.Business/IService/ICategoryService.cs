using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.IService
{
    public interface ICategoryService
    {
        bool Add(InCategory input);
        bool Update(InCategoryById input);
        bool Delete(int id);
        bool AddRange(); 
        List<Category> GetAll(bool tagAll);
    }
}
