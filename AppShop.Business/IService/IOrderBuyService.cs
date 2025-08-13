using AppShop.Business.DataModel;
using AppShop.Business.Entity;

namespace AppShop.Business.IService
{
    public interface IOrderBuyService
    {
        decimal Add(InOrderBuy input);
        bool ChangeShopStatues(int id, ShopStatues shopStatues);
        DataView GetAll(InputRequest inputRequest);
        DataView GetAllUser(InputRequest inputRequest, Guid userId);
        OrderBuy GetById(int id);
        List<KeyValue> GetDays();
    }
}