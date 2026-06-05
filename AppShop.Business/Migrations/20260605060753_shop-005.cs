using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppShop.Business.Migrations
{
    /// <inheritdoc />
    public partial class shop005 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<int>(
                name: "FactorNumber",
                table: "OrderBuy",
                type: "int",
                nullable: true);

            migrationBuilder.AddColumn<double>(
                name: "FinalPrice",
                table: "OrderBuy",
                type: "float",
                nullable: false,
                defaultValue: 0.0);

            migrationBuilder.AddColumn<double>(
                name: "GildPrice",
                table: "OrderBuy",
                type: "float",
                nullable: false,
                defaultValue: 0.0);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "FactorNumber",
                table: "OrderBuy");

            migrationBuilder.DropColumn(
                name: "FinalPrice",
                table: "OrderBuy");

            migrationBuilder.DropColumn(
                name: "GildPrice",
                table: "OrderBuy");
        }
    }
}
