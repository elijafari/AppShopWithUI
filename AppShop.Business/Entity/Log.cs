using AppShop.Business.Service;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Entity
{
   public class Log:BaseEntity
    {
        public DateTime CreateDateTime { get; set; }
        public string Massege { get; set; }
        [NotMapped]
        public string SolarCreateDate { get { return Utility.GetPersion(this.CreateDateTime); } }
    }
}
