using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json.Serialization;

namespace AppShop.Business.DataModel
{

    public class TalaPriceResponse
    {
        //[JsonPropertyName("banner")]
        //public bool Banner { get; set; }
        [JsonPropertyName("price")]
        public PriceData Price { get; set; }
    }

    public class PriceData
    {
        [JsonPropertyName("ounce")]
        public string Ounce { get; set; }

        [JsonPropertyName("bazartehran")]
        public string BazaarTehran { get; set; }

        [JsonPropertyName("geram18")]
        public string Geram18 { get; set; }

        [JsonPropertyName("sekkejad")]
        public string SekkeEmami { get; set; }

        [JsonPropertyName("sekkenim")]
        public string SekkeNim { get; set; }

        [JsonPropertyName("sekkerob")]
        public string SekkeRob { get; set; }

        [JsonPropertyName("silver")]
        public string Silver { get; set; }

        [JsonPropertyName("shemsh1")]
        public string Shemsh1 { get; set; }

        [JsonPropertyName("BTC_USDT")]
        public string BtcUsdt { get; set; }

        [JsonPropertyName("sekke-arzesh")]
        public string SekkeArzesh { get; set; }

        [JsonPropertyName("ENERGY_BRENT")]
        public string EnergyBrent { get; set; }

        [JsonPropertyName("USDT_IRT")]
        public string UsdtIrt { get; set; }

        [JsonPropertyName("parsian1")]
        public string Parsian1 { get; set; }

        [JsonPropertyName("sekkegad")]
        public string SekkeGad { get; set; }

        [JsonPropertyName("geram740")]
        public string Geram740 { get; set; }

        [JsonPropertyName("try")]
        public string Try { get; set; }

        [JsonPropertyName("omr")]
        public string Omr { get; set; }

        [JsonPropertyName("ETH_USDT")]
        public string EthUsdt { get; set; }

        [JsonPropertyName("hobab")]
        public string Hobab { get; set; }
    }
}
