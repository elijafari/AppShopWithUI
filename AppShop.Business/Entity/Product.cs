using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.Entity
{
    public class Product: BaseEntity
    { 
        public int CategoryId { get; set;}
        public int Code { get; set; }
        public string Name { get; set; }  
        public bool IsActive { get; set; }     
        public string? Description { get; set; }
        public int Price { get; set; }
        public string? PathImg { get; set; }
        public DateTime CreatedDate { get; set; }
        public DateTime? UpdatedDate { get; set; }
        public string? Slug { get; set; }
        public virtual Category CategoryEntity { get; set; }
        public virtual List<ItemBuy> ItemBuys { get; set; } = new List<ItemBuy>();
        public string? Feature { get; set; }
        public string? Description2 { get; set; }

        [NotMapped]
        public string CategoryName{ get; set; }
        public List<ProductImage> ProductImages { get; set; } = new List<ProductImage>();
        [NotMapped ]
        public List<string> PathImags { get; set; }= new List<string>();
        [NotMapped]
        public int IndexMain { get; set; }
    }
}
