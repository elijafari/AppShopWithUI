using AppShop.Business.Service;
using EnumsNET;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Entity
{
    public class OrderBuy
    {
        public Guid Id { get; set; }
        public Guid UserId { get; set; }
        public DateTime DateOrder { get; set; }
        public DateTime DateDelivery { get; set; }
        public ShopStatues Statues { get; set; }
        public long TrackingCode { get; set; }
        public int PayType { get; set; }
        public int? SendType { get; set; }
        public int AddressId { get; set; }

        public virtual List<ItemBuy> ItemBuys { get; set; } = new List<ItemBuy>();
        public virtual ICollection<OrderBuyStatues> OrderBuyStatues { get; set; } = new List<OrderBuyStatues>();
        public virtual Address AddressEntity { get; set; }
        public virtual User UserEntity { get; set; }


    }
}
