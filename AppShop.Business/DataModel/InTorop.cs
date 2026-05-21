using AppShop.Business.Entity;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public  class InTorop
    {
        public List<string> page_urls { get; set; }
        public int page { get; set; }
        public string sort { get; set; }
        public List<string> page_uniques { get; set; }
    }
}
