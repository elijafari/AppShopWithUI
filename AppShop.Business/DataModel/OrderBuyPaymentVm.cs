using AppShop.Business.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class OrderBuyPaymentVm
    {
        public Guid Id { get; set; }
        public int TotalPrice { get; set; }
        public string Phone { get;  set; }
        public string Email { get;  set; }
    }

}
