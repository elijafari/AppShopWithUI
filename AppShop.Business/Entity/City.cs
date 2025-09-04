using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Entity
{
  public  class City:BaseEntity
    {
        public string Name { get; set; }
        public int? ParentId { get; set; }
        public City Parent { get; set; }
        public virtual ICollection<City>   Cities { get; set; }
    }
}
