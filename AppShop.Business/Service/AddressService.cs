using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using AutoMapper;
using AutoMapper.QueryableExtensions;
namespace AppShop.Business.Service
{
    public class AddressService : IAddressService
    {
        AppShopDBContext db;
        private readonly IMapper mapper;
        public AddressService(AppShopDBContext _db, IMapper _mapper)
        {
            db = _db;
            mapper = _mapper;
        }
        public List<AddressVM> GetByUserId(Guid userId)
        {
            var query = db.Addresss.Where(x=>x.UserId==userId);
            return query.ProjectTo<AddressVM>(mapper.ConfigurationProvider).ToList();

        }
    }
}
