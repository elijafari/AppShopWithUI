using AppShop.Business.DataModel;
using AppShop.Business.Email;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using AutoMapper;
using Microsoft.EntityFrameworkCore.Metadata.Internal;
using Microsoft.Identity.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Service
{
    public class ContactService : IContactService
    {
        AppShopDBContext db;
        private readonly IMapper mapper;
        private readonly IEmailService emailService;
        public ContactService(AppShopDBContext _db, IMapper _mapper, IEmailService _emailService)
        {
            db = _db;
            mapper = _mapper;
            emailService = _emailService;
        }
        public bool Add(InContact input)
        {
            var entity = mapper.Map<Contact>(input);
            ValidtionData(entity);
            entity.CreateDate = DateTime.Now;
            db.Contacts.Add(entity);
            db.SaveChanges();
            _ = SendEmailToMe("ثبت پیام" ,entity.Message);
            return true;
        }
        public bool AddComment(InComment input)
        {
            var entity = mapper.Map<Contact>(input);
            ValidtionDataComment(entity);
            entity.CreateDate = DateTime.Now;
            db.Contacts.Add(entity);
            db.SaveChanges();
            _ = SendEmailToMe("ثبت نظر",entity .Message);
            return true;
        }
        public async Task SendEmailToMe(string type ,string msg)
        {
            var listTo = new List<string>
            {
                "e.jafari64@gmail.com",
          };
            _ = emailService.SendEmailAsync(listTo, type,msg);
        }


        public List<Contact> GetContacts()
        {
            return db.Contacts.Where(x => x.ProductId == null).ToList();
        }
        public List<ContactVM> GetComments()
        {
            var data = from c in db.Contacts.Where(x => x.ProductId != null)
                       join p in db.Products on c.ProductId equals p.Id
                       select new ContactVM
                       {
                           Name = c.Name,
                           CreateDate = c.CreateDate,
                           ProductName = p.Name,
                           Rote = c.Rate,
                           Message = c.Message
                       };

            return data.OrderByDescending(x => x.CreateDate).ToList();
        }

        private void ValidtionData(Contact entity)
        {
            if (string.IsNullOrEmpty(entity.Name))
            {
                throw new PersianException(Utility.GetMsgRequired("نام"));
            }
            if (string.IsNullOrEmpty(entity.Email))
            {
                throw new PersianException(Utility.GetMsgRequired("پست الکترونیکی"));
            }
            if (string.IsNullOrEmpty(entity.Message))
            {
                throw new PersianException(Utility.GetMsgRequired("پیام"));
            }
        }
        private void ValidtionDataComment(Contact entity)
        {
            if (string.IsNullOrEmpty(entity.Name))
            {
                throw new PersianException(Utility.GetMsgRequired("نام"));
            }
            if (entity.Rate == null)
            {
                throw new PersianException(Utility.GetMsgRequired("امتیاز"));
            }
            if (entity.ProductId == null)
            {
                throw new PersianException(Utility.GetMsgRequired("کالای مربوطه"));
            }
            if (string.IsNullOrEmpty(entity.Message))
            {
                throw new PersianException(Utility.GetMsgRequired("توضیحات"));
            }
        }

    }
}
