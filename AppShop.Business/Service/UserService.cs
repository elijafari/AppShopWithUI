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
        TokenService tokenService;
        public UserService(AppShopDBContext _db, TokenService _tokenService) {
        db= _db;
            tokenService = _tokenService;
        }
        public string  Add(User entity)
        {
            if(db.Users.Where(x=>x.UserName==entity.UserName).Any()) {
             throw new Exception("نام کاربری تکراری است");
            }
            db.Users.Add(entity);
            db.SaveChanges();
            var token=tokenService.CreateToken(entity);
            return token;
        }
        public string Login(InUser input)
        {
            var entity = db.Users.Where(x => x.UserName == input. UserName && x.Password == input.Password).FirstOrDefault();
            if (entity == null)
                throw new Exception("نام کاربری یا رمز عبور یافت نشد");
            var token = tokenService.CreateToken(entity);
            return token;
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
