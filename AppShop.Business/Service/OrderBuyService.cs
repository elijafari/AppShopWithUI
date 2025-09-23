using AppShop.Business.DataModel;
using AppShop.Business.Email;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using AutoMapper;
using AutoMapper.QueryableExtensions;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
using System.ComponentModel.Design;
using System.Linq;
using System.Security.Claims;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Service
{
    public class OrderBuyService : IOrderBuyService
    {
        AppShopDBContext db;
        private readonly IMapper mapper;
        private readonly IEmailService emailService;
        public OrderBuyService(AppShopDBContext _db, IMapper _mapper, IEmailService _emailService)
        {
            db = _db;
            mapper = _mapper;
            emailService = _emailService;
        }
        public decimal Add(InOrderBuy input, Guid userId)
        {
            Validtion(input);
            var entity = new OrderBuy();
            entity.Id = Guid.NewGuid();
            entity.PayType = input.PayType;
            entity.DateDelivery = DateTime.Now.AddDays(input.DateDelivery);
            entity.UserId = userId;
            entity.DateOrder = DateTime.Now;
            entity.Statues = ShopStatues.Register;
            var addressEntity = mapper.Map<InAddress, Address>(input.Address);
            addressEntity.UserId = entity.UserId;

            var ex_address = db.Addresss.FirstOrDefault(x => x.UserId == addressEntity.UserId
                 && x.CityId == addressEntity.CityId
                 && x.PostalCode == addressEntity.PostalCode
                 && x.AddressStr == addressEntity.AddressStr);

            if (ex_address == null)
                entity.AddressEntity = addressEntity;
            else
                entity.AddressId = ex_address.Id;

            entity.ItemBuys = new List<ItemBuy>();
            entity.ItemBuys.AddRange(mapper.Map<List<ItemBuy>>(input.Items));

            var statues = new OrderBuyStatues();
            statues.Statues = ShopStatues.Register;
            statues.DateStatues = DateTime.Now;
            entity.OrderBuyStatues.Add(statues);

            db.OrderBuys.Add(entity);
            db.SaveChanges();

            SendEmailToMe(entity.TrackingCode);

            SendEmailToUser(entity);

            return entity.TrackingCode;
        }

        private void SendEmailToUser(OrderBuy entity)
        {
            var user = db.Users.FirstOrDefault(x => x.Id == entity.UserId);
            if (user != null)

                if (!string.IsNullOrEmpty(user.Email))
                {
                    var products = db.Products.Where(y => entity.ItemBuys.Select(x => x.ProductId).Contains(y.Id)).ToList();
                    emailService.SendEmailAsync(user.Email, "تاییدیه سفارش", EmailMessege.OrderMessage(entity, user, products));

                }
        }

        private void SendEmailToMe(long trackingCode)
        {
            var listTo = new List<string>();
            listTo.Add("e.jafari64@gmail.com");
            emailService.SendEmailAsync(listTo, "ثبت سفارش", EmailMessege.OrderMessage(trackingCode));
        }

        private void Validtion(InOrderBuy input)
        {
            if (input.Items == null)
            {
                throw new PersianException("ایتمی برای ثبت سفارش وجود ندارد");

            }
            if (!input.Items.Any())
            {
                throw new PersianException("ایتمی برای ثبت سفارش وجود ندارد");
            }
            if (input.Address.CityId == 0)
            {
                throw new PersianException("شهر انتخاب نشده است");
            }

            if (input.Address.PostalCode.Length == 0)
            {
                throw new PersianException("کدپستی وارد نشده است");
            }

            if (input.Address.AddressStr.Length == 0)
            {
                throw new PersianException("آدرس وارد نشده است");
            }

            if (input.PayType == 0)
            {
                throw new PersianException("نوع پرداخت انتخاب نشده است");
            }

        }
        public bool ChangeShopStatues(Guid id, ShopStatues shopStatues)
        {
            var entity = db.OrderBuys.AsNoTracking().FirstOrDefault(x => x.Id == id);

            if (shopStatues == ShopStatues.Cancel && entity.Statues != ShopStatues.Register)
                throw new PersianException("با نوجه به وضعیت جاری سفارش امکان لغو سفارش وجود ندارد");

            if (shopStatues == ShopStatues.Confirm && entity.Statues != ShopStatues.Register)
                throw new PersianException("با نوجه به وضعیت جاری سفارش امکان تایید سفارش وجود ندارد");

            if (shopStatues == ShopStatues.Send && entity.Statues != ShopStatues.Confirm)
                throw new PersianException("با نوجه به وضعیت جاری سفارش امکان ارسال سفارش وجود ندارد");

            if (shopStatues == ShopStatues.Delivery && entity.Statues != ShopStatues.Send)
                throw new PersianException("با نوجه به وضعیت جاری سفارش امکان تحویل سفارش وجود ندارد");

            if (shopStatues == ShopStatues.Reject && entity.Statues != ShopStatues.Delivery)
                throw new PersianException("با نوجه به وضعیت جاری سفارش امکان مرجوع سفارش وجود ندارد");

            var statues = new OrderBuyStatues();
            statues.Statues = shopStatues;
            statues.DateStatues = DateTime.Now;
            entity.OrderBuyStatues.Add(statues);

            entity.Statues = shopStatues;
            db.OrderBuys.Update(entity);
            db.SaveChanges();
            return true;
        }
        public List<OrderBuyVm> GetAll(Guid userId, bool isAdmin)
        {
            var query = db.OrderBuys.Select(x => x);
            if (isAdmin)
                query = query.Where(x => x.Statues != ShopStatues.Cancel);
            else
                query = query.Where(x => x.UserId == userId);

            query = query.OrderByDescending(x => x.DateOrder);

            return query.ProjectTo<OrderBuyVm>(mapper.ConfigurationProvider).ToList();
        }
        public OrderBuyVm GetById(Guid id)
        {
            var query = db.OrderBuys.Where(x => x.Id == id);
            return query.ProjectTo<OrderBuyVm>(mapper.ConfigurationProvider).SingleOrDefault();

        }
        public List<KeyValue> GetDays()
        {
            var result = new List<KeyValue>();
            for (int i = 1; i < 8; ++i)
            {
                var date = DateTime.Now.AddDays(i);
                result.Add(new KeyValue(i, Utility.GetPersion(date) + " " + Utility.GetDay(date)));
            }
            return result;
        }
    }
}
