using AppShop.Business.DataModel;
using AppShop.Business.Entity;

namespace AppShop.Business.IService
{
    public interface IOrderBuyService
    {
        KeyValue Add(InOrderBuy input, Guid userid);
        bool ChangeShopStatues(Guid id, ShopStatues shopStatues, bool isAdmin = false);
        List<OrderBuyVm> GetAll(Guid userId, bool isAdmin, InStatues inStatues);
        List<KeyValue> GetDays();
        OrderBuyVm GetById(Guid id);
        OrderBuyPaymentVm GetByForPaymentId(Guid id);
        long GetTrackingCode(Guid id);
        long UpdatePaymentCode(Guid id, string paymentCode);

    }
}