﻿
using Microsoft.AspNetCore.Identity;
using System.ComponentModel.DataAnnotations.Schema;
using System.ComponentModel.DataAnnotations;

namespace AppShop.Business.Entity
{
    public class User : IdentityUser
    {
        public string Name { get; set; }
        public string Family { get; set; }
        public string Phone { get; set; }
        public string PhoneNumber { get; set; }
        public string Region { get; set; }
        public string PostalCode { get; set; }        
        public DateTime CreatedDate { get; set; } = DateTime.Now;
        public DateTime ModifiedDate { get; set; } = DateTime.Now;
        public DateTime LastLogin { get; set; } = DateTime.Now;
        public bool IsAdmin { get; set; }
        public string City { get; set; }
        public string Address { get; set; }

    }
}
