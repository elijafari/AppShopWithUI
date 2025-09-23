using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
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
        public ContactService(AppShopDBContext _db)
        {
            db = _db;
        }
        public bool Add(Contact entity)
        {
            ValidtionData(entity);
            db.Contacts.Add(entity);
            db.SaveChanges();
            return true;
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
   
    }
}
