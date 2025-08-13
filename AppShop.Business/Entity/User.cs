

namespace AppShop.Business.Entity
{
    public class User 
    {
        public Guid Id { get; set; }
        public string Name { get; set; }
        public string Phone { get; set; }
        public string PhoneNumber { get; set; }
        public string Region { get; set; }
        public string PostalCode { get; set; }        
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public DateTime? ModifiedDate { get; set; }
        public DateTime? LastLogin { get; set; } 
        public bool IsAdmin { get; set; }
        public string City { get; set; }
        public string Address { get; set; }
        public string Email { get; set; }
        public string UserName { get;  set; }
        public string Password { get;  set; }
    }
}
