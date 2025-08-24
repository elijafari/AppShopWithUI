using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Entity
{
    public class Address : BaseEntity
    {
        public Guid UserId { get; set; }
        public int CityId { get; set; }
        public string PostalCode { get; set; }
        public string AddressStr { get; set; }
        public bool IsLast { get; set; }

        public virtual  User UserEntity { get; set; }
        public virtual City CitiEntity { get; set; }
        public virtual ICollection<OrderBuy> OrderBuys { get; set; } = new List<OrderBuy>();
    }
}
