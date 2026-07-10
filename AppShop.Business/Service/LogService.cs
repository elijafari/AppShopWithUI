using AppShop.Business.Email;
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
    public class LogService : ILogService
    {
        AppShopDBContext db;
        private readonly IEmailService emailService;
        public LogService(AppShopDBContext _db, IEmailService _emailService)
        {
            db = _db;
            emailService = _emailService;
        }
        public void Add(string message)
        {
            var entity = new Log();
            entity.Massege = message;
            entity.CreateDateTime = DateTime.Now;
            db.Logs.Add(entity);
            db.SaveChanges();
            //  throw new Exception(message);
        }

        public List<Log> GetList()
        {
            return db.Logs.OrderByDescending(x => x.CreateDateTime).ToList();
        }
        public async Task<bool> SendEmailFromHast()
        {
            var listTo = new List<string>
            {
                "ehsanjaafari12@gmail.com",
                "e.jafari64@gmail.com",
            };
            return await emailService.SendEmailAsync(listTo, "ثبت سفارش تستی", "/**ثبت سفارش تستی**/");
        }
        public async Task<bool> SendEmail()
        {
            var listTo = new List<string>
            {
                "e.jafari64@gmail.com",
               // "ehsanjaafari12@gmail.com"
            };
             return await  emailService.SendEmailAsync(listTo, "ثبت سفارش تستی", "/**ثبت سفارش تستی**/");
        }
    }
}
