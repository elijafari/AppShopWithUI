using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class ReportProvinceVM
    {
        public int ProvinceId { get; set; }
        public string ProvinceName { get; set; }
        public int CountFactor { get; set; }
        public int CountProduct { get; internal set; }
    }
}
