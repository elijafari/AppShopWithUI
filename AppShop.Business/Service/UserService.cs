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
            var entity = db.Users.Where(x => x.UserName == input.UserName && x.Password == input.Password).FirstOrDefault();
            if (entity == null)
                throw new Exception("نام کاربری یا رمز عبور یافت نشد");
            var token = tokenService.CreateToken(entity);
            return token;
        }
        public User? GetById(Guid id)=> db.Users.Where(x => x.Id == id).FirstOrDefault();
        public User GetForForget(InUserForget input)
        {
            var entity = db.Users.Where(x => x.UserName == input.UserName || x.Phone == input.UserName).FirstOrDefault();
            if (entity == null)
                throw new Exception("نام کاربری یا شماره همراه یافت نشد");
            return entity;
        }
        public bool CheckAnswer(InUserAnswer input)=>db.Users.Where(x =>x.Answer== input.Answer &&( x.UserName == input.UserName || x.Phone == input.UserName)).Any();
         
        public bool AddAdmin()
        {
            User entity = new User()
            {
                UserName = "admin",
                FullName = "آدمین",
                Password = "admin",
                IsAdmin = true
            };
            db.Users.Add(entity);
            db.SaveChanges();
            return true;
        }
        public string Edit(User entity)
        {
            if (db.Users.Where(x =>x.Id!=entity.Id&& x.UserName == entity.UserName).Any())
            {
                throw new Exception("نام کاربری تکراری است");
            }
            db.Users.Update(entity);
            db.SaveChanges();
            var token = tokenService.CreateToken(entity);
            return token;
        }
        public string ResetPassword(InUserNewPassword input)
        {
            var entity = db.Users.FirstOrDefault(x => x.UserName == input.UserName || x.Phone == input.UserName);
            entity.Password = input.NewPassword;
            db.Users.Update(entity);
            db.SaveChanges();
            var token = tokenService.CreateToken(entity);
            return token;
        }
    }
}
