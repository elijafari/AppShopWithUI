using AppShop.Business.Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AppShop.Business.Mapping
{
    public class OrderBuyMapping : IEntityTypeConfiguration<OrderBuy>
    {
        public void Configure(EntityTypeBuilder<OrderBuy> builder)
        {
          
            builder.ToTable("OrderBuy");
            builder.HasKey(c => c.Id);
            builder.Property(p => p.Id).UseIdentityColumn();
            builder.Property(p => p.UserId).IsRequired();
            builder.Property(p => p.DateDelivery).IsRequired();
            builder.Property(p => p.Statues).IsRequired();
            builder.Property(p => p.DateOrder).IsRequired();
            builder.Property(p => p.AddressId).IsRequired();
            builder.Property(p => p.PayType).IsRequired();
            builder.Property(p => p.TrackingCode).HasDefaultValueSql("NEXT VALUE FOR shared.TrackingCodeSeq");

            builder.HasMany(p => p.ItemBuys).WithOne(p => p.OrderBuyEntity);
            builder.HasMany(p => p.OrderBuyStatues).WithOne(p => p.OrderBuyEntity);

        }
    }
}
