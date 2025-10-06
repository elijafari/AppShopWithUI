using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Entity
{
    public class ProductImage: BaseEntity
    { 
        public int ProductId { get; set;}
        public string? PathImg { get;  set; }
        public virtual Product ProductEntity { get;  set; }
    }
}
