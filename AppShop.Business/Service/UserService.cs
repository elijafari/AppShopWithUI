using AppShop.Business.DataModel;
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
    public class UserService:IUserService
    {
        AppShopDBContext db;    
        public UserService(AppShopDBContext _db) {
        db= _db;
        }
        public bool Add(User entity)
        {
            if(db.Users.Where(x=>x.UserName==entity.UserName).Any()) {
             throw new Exception("نام کاربری تکراری است");
            }
            db.Users.Add(entity);
            db.SaveChanges();
            return true;
        }
        public User Login(User entity)
        {
            var result = db.Users.Where(x => x.UserName == entity. UserName && x.Password == entity.Password).FirstOrDefault();
            if (result == null)
                throw new Exception("نام کاربری یا رمز عبور یافت نشد");
            return result;
        }
        public bool AddAdmin()
        {
            User entity = new User()
            {
                UserName = "admin",
                Name = "آدمین",
                Password = "admin",
                IsAdmin = true
            };
            db.Users.Add(entity);
            db.SaveChanges();
            return true;
        }
    }
}
