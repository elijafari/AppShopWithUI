using AppShop.Business.DataModel;
using AppShop.Business.IService;
using System.Globalization;
using System.Net;
using HtmlAgilityPack;
using System.Text.Json;

namespace AppShop.Business.Service
{
    public class TalaService : ITalaService
    {

        public TalaService()
        { }

        public async Task<MarketPrices> GetData()
        {
            var client = new HttpClient();
            var request = new HttpRequestMessage(HttpMethod.Get, "https://www.tala.ir/banner/?rnd=b8ddu8SaEQ&ids=,&is-mobile=0&android=0&ios=0&rnd=1263&h=1080&w=1920");
            request.Headers.Add("Cookie", "_trc=1788412477f4801d6ba7943af3d9d8872e81cf380e; PHPSESSID=8pj10eba8q849os4vj2ok1ssd1");


            var response = await client.SendAsync(request);
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();

            var data = JsonSerializer.Deserialize<TalaPriceResponse>(content);

            var json = JsonDocument.Parse(content);

            var root = json.RootElement;

            return new MarketPrices()
            {
                Gold18 = decimal.Parse(data.Price.Geram18.ToString().Replace(",", "")),
                EmamiCoin = decimal.Parse(data.Price.SekkeEmami.ToString().Replace(",", "")),
                HalfCoin = decimal.Parse(data.Price.SekkeNim.ToString().Replace(",", "")),
                QuarterCoin = decimal.Parse(data.Price.SekkeRob.ToString().Replace(",", "")),
                Dollar = decimal.Parse(data.Price.UsdtIrt.ToString().Replace(",", "")),
            };
        }

        public async Task<MarketPrices> GetData1()
        {
            var client = new HttpClient();
            var request = new HttpRequestMessage(HttpMethod.Get, "https://call3.tgju.org/ajax.json?rev=WSrFpxwuL06MO8eJn88P3xNLs8boPBzLGw5vgf9LXslVHosONomFfzSiXLzl");

            var response = await client.SendAsync(request);
            response.EnsureSuccessStatusCode();
            var content = await response.Content.ReadAsStringAsync();
            using var json = JsonDocument.Parse(content);
            var root = json.RootElement;

            return new MarketPrices
            {
                Gold18 = GetPrice(root, "geram18"),
                Gold24 = GetPrice(root, "geram24"),
                Dollar = GetPrice(root, "price_dollar_rl"),
                EmamiCoin = GetPrice(root, "sekee"),
                HalfCoin = GetPrice(root, "nim"),
                QuarterCoin = GetPrice(root, "rob")
            };
        }

        private decimal GetPrice(JsonElement root, string key)
        {
            if (!root.TryGetProperty(key, out var value))
                return 0;

            var price = value.GetProperty("p").GetString();

            if (string.IsNullOrWhiteSpace(price))
                return 0;

            price = price
                .Replace(",", "")
                .Replace("/", ".");

            return decimal.Parse(price);
        }

    }
}