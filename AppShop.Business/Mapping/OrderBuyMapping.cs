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
            builder.Property(p => p.Id);
            builder.Property(p => p.UserId).IsRequired();
            builder.Property(p => p.DateDelivery).IsRequired();
            builder.Property(p => p.Statues).IsRequired();
            builder.Property(p => p.DateOrder).IsRequired();
            builder.Property(p => p.AddressId).IsRequired();
            builder.Property(p => p.PayType).IsRequired();
            builder.Property(p => p.SendType).IsRequired(false);
            builder.Property(p => p.TrackingCode).HasDefaultValueSql("NEXT VALUE FOR shared.TrackingCodeSeq");
        
            builder.HasOne(c => c.UserEntity).WithMany(c => c.OrderBuys).HasForeignKey(c => c.UserId).OnDelete(DeleteBehavior.NoAction); ;
            builder.HasOne(c => c.AddressEntity).WithMany(c => c.OrderBuys).HasForeignKey(c => c.AddressId);


        }
    }
}
