using AppShop.Business.Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Migrations;

namespace AppShop.Business.Mapping
{
    public class AppShopDBContext :DbContext
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
        public DbSet<City> Cities { get; set; }
        public DbSet<Address> Addresss { get; set; }
        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder); 

            modelBuilder.ApplyConfiguration(new CategoryMapping());
            modelBuilder.ApplyConfiguration(new ProductMapping());
            modelBuilder.ApplyConfiguration(new OrderBuyMapping());
            modelBuilder.ApplyConfiguration(new LogMapping());
            modelBuilder.ApplyConfiguration(new ItemBuyMapping());
            modelBuilder.ApplyConfiguration(new OrderBuyStatuesMapping());
            modelBuilder.ApplyConfiguration(new UserMapping());
            modelBuilder.ApplyConfiguration(new CityMapping());
            modelBuilder.ApplyConfiguration(new AddressMapping());

            modelBuilder.HasSequence<int>("TrackingCodeSeq", schema: "shared")
           .StartsAt(1000)  // شروع از 1000
           .IncrementsBy(1); // افزایش 1 واحدی
        }
    }
}