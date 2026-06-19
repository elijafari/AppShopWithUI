using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppShop.Business.Migrations
{
    /// <inheritdoc />
    public partial class shop007 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_OrderBuy_Address_AddressId",
                table: "OrderBuy");

            migrationBuilder.AlterColumn<int>(
                name: "AddressId",
                table: "OrderBuy",
                type: "int",
                nullable: true,
                oldClrType: typeof(int),
                oldType: "int");

            migrationBuilder.AddForeignKey(
                name: "FK_OrderBuy_Address_AddressId",
                table: "OrderBuy",
                column: "AddressId",
                principalTable: "Address",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_OrderBuy_Address_AddressId",
                table: "OrderBuy");

            migrationBuilder.AlterColumn<int>(
                name: "AddressId",
                table: "OrderBuy",
                type: "int",
                nullable: false,
                defaultValue: 0,
                oldClrType: typeof(int),
                oldType: "int",
                oldNullable: true);

            migrationBuilder.AddForeignKey(
                name: "FK_OrderBuy_Address_AddressId",
                table: "OrderBuy",
                column: "AddressId",
                principalTable: "Address",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
