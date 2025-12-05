using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppShop.Business.Migrations
{
    /// <inheritdoc />
    public partial class shop003 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "PaymentCode",
                table: "OrderBuy",
                type: "nvarchar(50)",
                maxLength: 50,
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "PaymentCode",
                table: "OrderBuy");
        }
    }
}
