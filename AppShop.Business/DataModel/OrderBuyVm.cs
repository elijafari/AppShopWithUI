using AppShop.Business.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class OrderBuyVm
    {
        public Guid Id { get; set; }
        public DateTime DateOrder { get; set; }
        public DateTime DateDelivery { get; set; }
        public ShopStatues Statues { get; set; }
        public int TotalPrice { get; set; }
        public long TrackingCode { get; set; }
        public string FullName { get; set; }
        public string SolorDateOrder => Utility.GetPersion(this.DateOrder);
        public string SolorDateDelivery => Utility.GetPersion(this.DateDelivery);
        public string StrStatues => this.Statues.GetEnumDescription();
    }

}
