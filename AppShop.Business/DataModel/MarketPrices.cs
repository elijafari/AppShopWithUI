using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class MarketPrices
    {
        public decimal Gold18 { get; set; }
        public decimal Gold24 { get; set; }
        public decimal Dollar { get; set; }
        public decimal EmamiCoin { get; set; }
        public decimal HalfCoin { get; set; }
        public decimal QuarterCoin { get; set; }
        public int NumGold18 { get { return 80; } }
        public int NumGold24 { get { return 3; } }
        public int NumDollar { get { return 1100; } }
        public int NumEmamiCoin { get { return 6; } }
        public int NumHalfCoin { get { return 1; } }
        public int NumQuarterCoin { get { return 11; } }

        public decimal TotalGold18 { get { return Gold18 * NumGold18; } }
        public decimal TotalGold24 { get { return Gold24 * NumGold24; } }
        public decimal TotalDollar { get { return Dollar * NumDollar; } }
        public decimal TotalEmamiCoin { get { return EmamiCoin * NumEmamiCoin; } }
        public decimal TotalHalfCoin { get { return HalfCoin * NumHalfCoin; } }
        public decimal TotalQuarterCoin { get { return QuarterCoin * NumQuarterCoin; } }

        public decimal Sum { get { return TotalGold18 + TotalGold24 + TotalHalfCoin + TotalEmamiCoin + TotalQuarterCoin + TotalDollar; } }
    }
}
