using AppShop.Business.Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AppShop.Business.Mapping
{
    public class ContactMapping : IEntityTypeConfiguration<Contact>
    {
        public void Configure(EntityTypeBuilder<Contact> builder)
        {
          
            builder.ToTable("Contact");
            builder.HasKey(c => c.Id);
            builder.Property(p => p.Id).ValueGeneratedOnAdd();
            builder.Property(p => p.Name).IsRequired().HasColumnType("nvarchar(50)");
            builder.Property(p => p.Email).HasColumnType("nvarchar(500)");
            builder.Property(p => p.Message).HasColumnType("nvarchar(1000)");

        }
    }
}
