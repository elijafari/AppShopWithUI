using System;
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
            migrationBuilder.DropForeignKey(
                name: "FK_OrderBuy_Users_UserId",
                table: "OrderBuy");

            migrationBuilder.DropForeignKey(
                name: "FK_OrderBuyStatues_OrderBuy_OrderBuyId",
                table: "OrderBuyStatues");

            migrationBuilder.DropIndex(
                name: "IX_OrderBuy_UserId",
                table: "OrderBuy");

            migrationBuilder.RenameColumn(
                name: "OrderBuyId",
                table: "OrderBuyStatues",
                newName: "OrderBuyEntityId");

            migrationBuilder.RenameIndex(
                name: "IX_OrderBuyStatues_OrderBuyId",
                table: "OrderBuyStatues",
                newName: "IX_OrderBuyStatues_OrderBuyEntityId");

            migrationBuilder.RenameColumn(
                name: "Number",
                table: "OrderBuyItem",
                newName: "ProductId");

            migrationBuilder.RenameColumn(
                name: "IdProduct",
                table: "OrderBuyItem",
                newName: "OrderId");

            migrationBuilder.RenameColumn(
                name: "IdOrder",
                table: "OrderBuyItem",
                newName: "Count");

            migrationBuilder.AddColumn<int>(
                name: "AddressId",
                table: "OrderBuy",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.AddColumn<int>(
                name: "PayType",
                table: "OrderBuy",
                type: "int",
                nullable: false,
                defaultValue: 0);

            migrationBuilder.CreateTable(
                name: "Address",
                columns: table => new
                {
                    Id = table.Column<int>(type: "int", nullable: false)
                        .Annotation("SqlServer:Identity", "1, 1"),
                    UserId = table.Column<Guid>(type: "uniqueidentifier", nullable: false),
                    CityId = table.Column<int>(type: "int", nullable: false),
                    PostalCode = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    AddressStr = table.Column<string>(type: "nvarchar(max)", nullable: false),
                    IsLast = table.Column<bool>(type: "bit", nullable: false)
                },
                constraints: table =>
                {
                    table.PrimaryKey("PK_Address", x => x.Id);
                    table.ForeignKey(
                        name: "FK_Address_City_CityId",
                        column: x => x.CityId,
                        principalTable: "City",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                    table.ForeignKey(
                        name: "FK_Address_Users_UserId",
                        column: x => x.UserId,
                        principalTable: "Users",
                        principalColumn: "Id",
                        onDelete: ReferentialAction.Cascade);
                });

            migrationBuilder.CreateIndex(
                name: "IX_OrderBuy_AddressId",
                table: "OrderBuy",
                column: "AddressId");

            migrationBuilder.CreateIndex(
                name: "IX_Address_CityId",
                table: "Address",
                column: "CityId");

            migrationBuilder.CreateIndex(
                name: "IX_Address_UserId",
                table: "Address",
                column: "UserId");

            migrationBuilder.AddForeignKey(
                name: "FK_OrderBuy_Address_AddressId",
                table: "OrderBuy",
                column: "AddressId",
                principalTable: "Address",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_OrderBuyStatues_OrderBuy_OrderBuyEntityId",
                table: "OrderBuyStatues",
                column: "OrderBuyEntityId",
                principalTable: "OrderBuy",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_OrderBuy_Address_AddressId",
                table: "OrderBuy");

            migrationBuilder.DropForeignKey(
                name: "FK_OrderBuyStatues_OrderBuy_OrderBuyEntityId",
                table: "OrderBuyStatues");

            migrationBuilder.DropTable(
                name: "Address");

            migrationBuilder.DropIndex(
                name: "IX_OrderBuy_AddressId",
                table: "OrderBuy");

            migrationBuilder.DropColumn(
                name: "AddressId",
                table: "OrderBuy");

            migrationBuilder.DropColumn(
                name: "PayType",
                table: "OrderBuy");

            migrationBuilder.RenameColumn(
                name: "OrderBuyEntityId",
                table: "OrderBuyStatues",
                newName: "OrderBuyId");

            migrationBuilder.RenameIndex(
                name: "IX_OrderBuyStatues_OrderBuyEntityId",
                table: "OrderBuyStatues",
                newName: "IX_OrderBuyStatues_OrderBuyId");

            migrationBuilder.RenameColumn(
                name: "ProductId",
                table: "OrderBuyItem",
                newName: "Number");

            migrationBuilder.RenameColumn(
                name: "OrderId",
                table: "OrderBuyItem",
                newName: "IdProduct");

            migrationBuilder.RenameColumn(
                name: "Count",
                table: "OrderBuyItem",
                newName: "IdOrder");

            migrationBuilder.CreateIndex(
                name: "IX_OrderBuy_UserId",
                table: "OrderBuy",
                column: "UserId");

            migrationBuilder.AddForeignKey(
                name: "FK_OrderBuy_Users_UserId",
                table: "OrderBuy",
                column: "UserId",
                principalTable: "Users",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);

            migrationBuilder.AddForeignKey(
                name: "FK_OrderBuyStatues_OrderBuy_OrderBuyId",
                table: "OrderBuyStatues",
                column: "OrderBuyId",
                principalTable: "OrderBuy",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}
