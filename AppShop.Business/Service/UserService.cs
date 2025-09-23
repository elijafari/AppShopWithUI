using AppShop.Business.DataModel;
using AppShop.Business.Email;
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
    public class UserService : IUserService
    {
        AppShopDBContext db;
        TokenService tokenService;
        IEmailService emailService;
        public UserService(AppShopDBContext _db, TokenService _tokenService, IEmailService _emailService)
        {
            db = _db;
            tokenService = _tokenService;
            emailService = _emailService;
        }
        public string Add(User entity)
        {
            ValidtionData(entity);
            db.Users.Add(entity);
            db.SaveChanges();
            var token = tokenService.CreateToken(entity);
            return token;
        }

        private void ValidtionData(User entity)
        {
            if (string.IsNullOrEmpty(entity.FullName))
            {
                throw new PersianException(Utility.GetMsgRequired("نام و نام خانوادگی"));
            }
            if (string.IsNullOrEmpty(entity.UserName))
            {
                throw new PersianException(Utility.GetMsgRequired("نام کاربری"));
            }
            if (string.IsNullOrEmpty(entity.Password))
            {
                throw new PersianException(Utility.GetMsgRequired("رمز عبور"));
            }
            if (string.IsNullOrEmpty(entity.Phone))
            {
                throw new PersianException(Utility.GetMsgRequired("شماره همراه"));
            }

            if (db.Users.Where(x => x.Id != entity.Id && x.UserName == entity.UserName).Any())
            {
                throw new PersianException("نام کاربری تکراری است");
            }
        }
        public string Login(InUser input)
        {
            var entity = db.Users.Where(x => x.UserName == input.UserName && x.Password == input.Password).FirstOrDefault();
            if (entity == null)
                throw new PersianException("نام کاربری یا رمز عبور یافت نشد");
            var token = tokenService.CreateToken(entity);
            return token;
        }
        public User? GetById(Guid id) => db.Users.Where(x => x.Id == id).FirstOrDefault();
        public string GetForForget(InUserForget input)
        {
            var entity = db.Users.Where(x => x.UserName == input.UserName || x.Phone == input.UserName).FirstOrDefault();
            if (entity == null)
                throw new PersianException("نام کاربری یا شماره همراه یافت نشد");
            if (string.IsNullOrEmpty(entity.Email))
                throw new PersianException("اطلاعات پست الکترونیکی شما یافت نشد لطفا پست الکترونیکی خود را در بخش تماس با ما به همراه نام کاربری برای ما ارسال کنید");

            Random rnd = new Random();
            int code = rnd.Next(1001, 10000);

            var resultSend = emailService.SendEmailAsync(entity.Email, "کد ارسالی برای  بازیابی رمز عبور", EmailMessege.ForgetMessage(code)).Result;
            return code.Ecoding();

        }
        public bool CheckCode(InUserForgetCode input)
        {
            if (input.Code != input.TokenCode.Decoding())
                throw new PersianException("کد وارد شده اشتباه است");
            return true;
        }

        public bool AddAdmin()
        {
            User entity = new User()
            {
                UserName = "admin",
                FullName = "آدمین",
                Password = "admin",
                IsAdmin = true,
                Phone = "1",
            };
            db.Users.Add(entity);
            db.SaveChanges();
            return true;
        }
        public string Edit(User entity)
        {
            ValidtionData(entity);

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
