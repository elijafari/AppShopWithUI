using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AutoMapper;

namespace AppShop.Business
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            // Add as many of these lines as you need to map your objects
            CreateMap<InProduct, Product>();
            CreateMap<InAddress, Address>();
            CreateMap<InItemBuy, ItemBuy>();
            CreateMap<OrderBuy, OrderBuyVm>()
            .ForMember(dest => dest.TotalPrice, opt => opt.MapFrom(src => src.ItemBuys.Sum(x => x.Count * x.Price)))
            .ForMember(dest => dest.FullName, opt => opt.MapFrom(src => src.UserEntity.FullName))
            .ForMember(dest => dest.Phone, opt => opt.MapFrom(src => src.UserEntity.Phone))
            .ForMember(dest => dest.AddressStr, opt => opt.MapFrom(src => src.AddressEntity.AddressStr))
            .ForMember(dest => dest.Items, opt => opt.MapFrom(src => src.ItemBuys));

            CreateMap<ItemBuy, ItemBuyVM>()
        .ForMember(dest => dest.Name, opt => opt.MapFrom(src => src.ProductEntity.Name));
        }
    }
}