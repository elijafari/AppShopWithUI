using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Entity
{
    public class ItemBuy:BaseEntity
    {
        public int OrderId { get; set; }
        public int ProductId { get; set; }
        public int Count { get; set; }
        public int Price { get; set; }
        public virtual OrderBuy OrderBuyEntity { get; set; }

    }
}
