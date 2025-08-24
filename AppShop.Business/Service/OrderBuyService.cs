using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using AutoMapper;
using AutoMapper.QueryableExtensions;
using Microsoft.EntityFrameworkCore;
using System;
using System.Collections.Generic;
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
        public OrderBuyService(AppShopDBContext _db, IMapper _mapper)
        {
            db = _db;
            mapper = _mapper;

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


            return entity.TrackingCode;
        }
        private void Validtion(InOrderBuy input)
        {
            if (input.Items == null)
            {
                throw new Exception("ایتمی برای ثبت سفارش وجود ندارد");

            }
            if (!input.Items.Any())
            {
                throw new Exception("ایتمی برای ثبت سفارش وجود ندارد");
            }
            if (input.Address.CityId == 0)
            {
                throw new Exception("شهر انتخاب نشده است");
            }

            if (input.Address.PostalCode.Length == 0)
            {
                throw new Exception("کدپستی وارد نشده است");
            }

            if (input.Address.AddressStr.Length == 0)
            {
                throw new Exception("آدرس وارد نشده است");
            }

            if (input.PayType == 0)
            {
                throw new Exception("نوع پرداخت انتخاب نشده است");
            }

        }
        public bool ChangeShopStatues(Guid id, ShopStatues shopStatues)
        {
            var entity = db.OrderBuys.AsNoTracking().FirstOrDefault(x => x.Id == id);

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
            var query = db.OrderBuys.Select(x=>x);
            if (!isAdmin)
                query =query.Where(x => x.UserId == userId);

            query = query.OrderByDescending(x => x.DateOrder);

            return query.ProjectTo<OrderBuyVm>(mapper.ConfigurationProvider).ToList(); 
        }
        public OrderBuy GetById(Guid id)
        {
            return db.OrderBuys.Where(x => x.Id == id).SingleOrDefault();
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
