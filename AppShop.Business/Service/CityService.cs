using AppShop.Business.DataModel;
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
    public class CityService : ICityService
    {
        AppShopDBContext db;
        private readonly IMapper mapper;
        public CityService(AppShopDBContext _db,IMapper _mapper) {
        db= _db;
            mapper = _mapper;
        }
        public bool Add(List<InCity> models)
        {
            var data = new List<City>();
            foreach (var item in models)
            {
                data.Add( new City()
                {
                    Name = item.province,
                    Cities = item.cities.Select(x => new City() { Name = x }).ToList()
                });
            }
            db.Cities.AddRange(data);
            db.SaveChanges();
            return true;
        }
        public List<CitiVM> GetProvinceAll()
        {
            var data = db.Cities.Where(x => x.ParentId == null).OrderBy(c => c.Name).ToList();
            return mapper.Map<List<City>, List<CitiVM>>(data);
            
        }
    }
}
