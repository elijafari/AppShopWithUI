using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace AppShop.Business.Migrations
{
    /// <inheritdoc />
    public partial class shop002 : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<long>(
                name: "TrackingCode",
                table: "OrderBuy",
                type: "bigint",
                nullable: false,
                defaultValueSql: "NEXT VALUE FOR shared.TrackingCodeSeq",
                oldClrType: typeof(decimal),
                oldType: "decimal(18,2)",
                oldDefaultValueSql: "NEXT VALUE FOR shared.TrackingCodeSeq");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.AlterColumn<decimal>(
                name: "TrackingCode",
                table: "OrderBuy",
                type: "decimal(18,2)",
                nullable: false,
                defaultValueSql: "NEXT VALUE FOR shared.TrackingCodeSeq",
                oldClrType: typeof(long),
                oldType: "bigint",
                oldDefaultValueSql: "NEXT VALUE FOR shared.TrackingCodeSeq");
        }
    }
}
