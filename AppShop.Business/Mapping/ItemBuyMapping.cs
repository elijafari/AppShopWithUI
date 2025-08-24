using AppShop.Business.Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AppShop.Business.Mapping
{
    public class ItemBuyMapping : IEntityTypeConfiguration<ItemBuy>
    {
        public void Configure(EntityTypeBuilder<ItemBuy> builder)
        {
          
            builder.ToTable("OrderBuyItem");
            builder.HasKey(c => c.Id);
            builder.Property(p => p.Id).UseIdentityColumn();
            builder.Property(p => p.OrderId).IsRequired();
            builder.Property(p => p.ProductId).IsRequired();
            builder.Property(p => p.Count).IsRequired();
            builder.Property(p => p.Price).IsRequired();

            

            builder.HasOne(c => c.OrderBuyEntity).WithMany(c => c.ItemBuys).HasForeignKey(c => c.OrderId);
        }
    }
}
