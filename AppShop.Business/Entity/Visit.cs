using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Entity
{
    public class Visit
    {
        public long Id { get; set; }
        public DateTime Date { get; set; }
        public string NamePage { get; set; }
        public bool? IsTorob { get; set; }

    }
}
