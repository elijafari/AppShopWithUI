using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class InPaymentRequest
    {
        public int Amount { get; set; }
        public Guid OrderId { get; set; }
        
    }
}
