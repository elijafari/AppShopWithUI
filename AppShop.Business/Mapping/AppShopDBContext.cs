﻿using AppShop.Business.Entity;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Identity.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore;

namespace AppShop.Business.Mapping
{
    public class AppShopDBContext :IdentityDbContext<User>
    {  
        public AppShopDBContext(DbContextOptions<AppShopDBContext> options): base(options)
    { }
        public DbSet<Category> Categories { get; set; }
        public DbSet<Product> Products { get; set; }
        public DbSet<User> Users { get; set; }
        public DbSet<OrderBuy> OrderBuys { get; set; }
        public DbSet<Log> Logs  { get; set; }
        public DbSet<ItemBuy> ItemBuies  { get; set; }
        public DbSet<OrderBuyStatues> OrderBuyStatues { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);   
            IgnoreTable(modelBuilder);
            modelBuilder.ApplyConfiguration(new CategoryMapping());
            modelBuilder.ApplyConfiguration(new ProductMapping());
            modelBuilder.ApplyConfiguration(new OrderBuyMapping());
            modelBuilder.ApplyConfiguration(new LogMapping());
            modelBuilder.ApplyConfiguration(new ItemBuyMapping());
            modelBuilder.ApplyConfiguration(new OrderBuyStatuesMapping());
            modelBuilder.ApplyConfiguration(new UserMapping());

        }
        private void IgnoreTable(ModelBuilder modelBuilder)
        {

            modelBuilder.Ignore<IdentityUserToken<string>>();
            modelBuilder.Ignore<IdentityUserRole<string>>();
            modelBuilder.Ignore<IdentityUserLogin<string>>();
            modelBuilder.Ignore<IdentityUserClaim<string>>();
            modelBuilder.Ignore<IdentityRoleClaim<string>>();
            modelBuilder.Ignore<IdentityRole>();
            modelBuilder.Ignore<IdentityUser>();

            modelBuilder.Entity<User>()

            .Ignore(c => c.AccessFailedCount)
            .Ignore(c => c.LockoutEnabled)
            .Ignore(c => c.TwoFactorEnabled)
            .Ignore(c => c.ConcurrencyStamp)
            .Ignore(c => c.LockoutEnd)
            .Ignore(c => c.EmailConfirmed)
            .Ignore(c => c.PhoneNumberConfirmed)
   
            .Ignore(c => c.PhoneNumber);



        //modelBuilder.Entity<IdentityUser>().ToTable("Users");//to change the name of table.

        }
    }
}