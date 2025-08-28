using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
  public  class AddressVM
    {
        public string  City { get; set; }
        public string PostalCode { get; set; }
        public string AddressStr { get; set; }
        public bool IsLast { get; set; }
    }
}
