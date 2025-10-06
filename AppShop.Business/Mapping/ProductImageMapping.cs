using AppShop.Business.Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AppShop.Business.Mapping
{
    public class ProductImageMapping : IEntityTypeConfiguration<ProductImage>
    {
        public void Configure(EntityTypeBuilder<ProductImage> builder)
        {
          
            builder.ToTable("ProductImage");
            builder.HasKey(c => c.Id);
            builder.Property(p => p.Id).UseIdentityColumn();
            builder.Property(p => p.ProductId).IsRequired();
            builder.Property(p => p.PathImg).HasColumnType("nvarchar(500)");

            builder.HasOne(c => c.ProductEntity).WithMany(c => c.ProductImages).HasForeignKey(c => c.ProductId);

        }
    }
}
