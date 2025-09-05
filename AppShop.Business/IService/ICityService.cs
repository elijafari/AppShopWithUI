using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.IService
{
   public interface ICityService
    {
       bool Add(List<InCity> models);
        List<CitiVM> GetAll();

    }
}
