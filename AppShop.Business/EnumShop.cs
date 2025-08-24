using System.ComponentModel;

namespace AppShop.Business
{
    public enum ShopStatues
    {
        [Description("ثبت اولیه")]
        Register = 1,
        [Description("تایید شده")]
        Confirm = 2,
        [Description("ارسال شده")]
        Send = 3,
        [Description("تحویل داده شده")]
        Delivery = 4,
        [Description("مرجوعی")]
        Reject = 5,
        [Description("لغو شده")]
        Cancel = 6
    }
}
