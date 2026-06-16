using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using AutoMapper;
using Microsoft.EntityFrameworkCore;

namespace AppShop.Business.Service
{
    public class VisitService : IVisitService
    {
        AppShopDBContext db;
        public VisitService(AppShopDBContext _db)
        {
            db = _db;
        }
        public List<VisitVM> GetAll()
        {

            var data = db.Visits.ToList().Select(x => new VisitVM()
            {
                Date = Utility.GetPersion(x.Date),
                NamePage = x.NamePage
            });

            var result = data.GroupBy(x => new { x.Date, x.NamePage }).Select(x => new VisitVM()
            {
                Date = x.Key.Date,
                NamePage = x.Key.NamePage=="Home"?"صفحه اصلی":x.Key.NamePage,
                Count = x.Count()
            }).OrderByDescending(x=>x.Date).ThenByDescending(x=>x.Count).ToList();
            return result;
        }

    }
}
