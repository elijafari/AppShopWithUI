using AppShop.Business.Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AppShop.Business.Mapping
{
    public class AddressMapping : IEntityTypeConfiguration<Address>
    {
        public void Configure(EntityTypeBuilder<Address> builder)
        {
          
            builder.ToTable("Address");
            builder.HasKey(c => c.Id);
            builder.Property(p => p.Id).UseIdentityColumn();
            builder.Property(p => p.UserId).IsRequired();
            builder.Property(p => p.CityId).IsRequired();
            builder.Property(p => p.PostalCode).IsRequired();
            builder.Property(p => p.AddressStr).IsRequired();
            builder.Property(p => p.IsLast).HasDefaultValue(true);


            builder.HasMany(p => p.OrderBuys).WithOne(p => p.AddressEntity);
        }
    }
}
