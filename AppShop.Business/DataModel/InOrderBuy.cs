using AppShop.Business.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class InOrderBuy
    {
        public Guid UserId { get; set; }
        public int DateDelivery { get; set; }      
        public int PayType { get; set; }
        public List<InItemBuy> Items { get; set; }
        public InAddress Address { get; set; }
    }
    public class InAddress
    {
        public int CityId { get; set; }
        public string PostalCode { get; set; }
        public string AddressStr { get; set; }
    }
    public class InItemBuy 
    {
        public int ProductId { get; set; }
        public int Count { get; set; }
        public int Price { get; set; }
    }
    public class InId
    {
        public int Id { get; set; }
    }
}
