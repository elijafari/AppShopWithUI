using AppShop.Business.DataModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.IService
{
    public interface IVisitService
    {
        List<VisitVM> GetAll();
    }
}
