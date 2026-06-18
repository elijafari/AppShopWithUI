using AppShop.Business.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.IService
{
    public interface ILogService
    {
        void Add(string message,string?  userId);
        List<Log> GetList();
        Task<bool> SendEmailFromHast();
        Task<bool> SendEmail();
//        bool SendEmail();
    }
}
