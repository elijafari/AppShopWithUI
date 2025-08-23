

using System.ComponentModel.DataAnnotations.Schema;

namespace AppShop.Business.Entity
{
    public class User 
    {
        public Guid Id { get; set; }
        public string FullName { get; set; }
        public string? Phone { get; set; }      
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public DateTime? ModifiedDate { get; set; }
        public DateTime? LastLogin { get; set; } 
        public bool IsAdmin { get; set; }
        public string UserName { get;  set; }
        public string Password { get;  set; }
        public int Question { get;  set; }
        public string Answer { get;  set; }

        public virtual ICollection<Address> Addresses { get; set; }
    }
}
