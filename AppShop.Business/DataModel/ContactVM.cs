using AppShop.Business.Service;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class ContactVM
    {
        public string Name { get; internal set; }
        public DateTime? CreateDate { get; internal set; }
        public string ProductName { get; internal set; }
        public double? Rote { get; internal set; }
        public string Message { get; internal set; }
        public string SolarCreateDate { get { return this.CreateDate.HasValue? Utility.GetPersion(this.CreateDate.Value):null; } }

    }
}
