using AppShop.Business.Entity;
using Microsoft.EntityFrameworkCore;
using Microsoft.EntityFrameworkCore.Metadata.Builders;

namespace AppShop.Business.Mapping
{
    public class VisitMapping : IEntityTypeConfiguration<Visit>
    {
        public void Configure(EntityTypeBuilder<Visit> builder)
        {
          
            builder.ToTable("Visit");
            builder.HasKey(c => c.Id);
            builder.Property(p => p.Id).UseIdentityColumn();
            builder.Property(p => p.Date).IsRequired();
            builder.Property(p => p.NamePage).IsRequired().HasColumnType("nvarchar(1000)");
            builder.Property(p => p.IsTorob).IsRequired(false);

        }
    }
}
