using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppShop.Business.Migrations
{
    /// <inheritdoc />
    public partial class shop009 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AddColumn<string>(
                name: "Description2",
                table: "Product",
                type: "nvarchar(1000)",
                nullable: true);

            migrationBuilder.AddColumn<string>(
                name: "Feature",
                table: "Product",
                type: "nvarchar(1000)",
                nullable: true);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Description2",
                table: "Product");

            migrationBuilder.DropColumn(
                name: "Feature",
                table: "Product");
        }
    }
}
