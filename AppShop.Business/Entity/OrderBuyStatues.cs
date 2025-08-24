using AppShop.Business.DataModel;
using AppShop.Business.Service;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Entity
{
    public class OrderBuyStatues:BaseEntity
    {
        public  Guid OrderId { get; set; }
        public DateTime DateStatues { get; set; }
        public ShopStatues Statues { get; set; }
        public virtual OrderBuy  OrderBuyEntity {get; set; }
    }
}
