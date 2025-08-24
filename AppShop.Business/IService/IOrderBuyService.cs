using AppShop.Business.DataModel;
using AppShop.Business.Entity;

namespace AppShop.Business.IService
{
    public interface IOrderBuyService
    {
        decimal Add(InOrderBuy input,Guid userid);
        bool ChangeShopStatues(Guid id, ShopStatues shopStatues);
        List<OrderBuyVm> GetAll(Guid userId, bool isAdmin);
        List<KeyValue> GetDays();
        OrderBuyVm GetById(Guid id);
    }
}