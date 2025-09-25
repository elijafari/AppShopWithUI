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
            migrationBuilder.AddColumn<string>(
                name: "Slug",
                table: "Product",
                type: "nvarchar(80)",
                nullable: false,
                defaultValue: "");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropColumn(
                name: "Slug",
                table: "Product");
        }
    }
}
