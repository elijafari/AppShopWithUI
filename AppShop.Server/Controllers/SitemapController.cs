using AppShop.Business.DataModel;
using AppShop.Business.IService;
using Microsoft.AspNetCore.Mvc;
using System.Text;
using System.Xml.Linq;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("sitemap.xml")]
    public class SitemapController : ControllerBase
    {

        private readonly IProductService service;
        public SitemapController(IProductService _service)
        {
            service = _service;
        }
        [HttpGet]
        public IActionResult GetSitemap()
        {
            var baseUrl = $"{Request.Scheme}://{Request.Host}";

            // لیست آدرس‌های اصلی سایت
            var urls = new List<(string loc, DateTime lastmod, string changefreq, double priority)>
            {
                ($"{baseUrl}/", DateTime.UtcNow, "daily", 1.0),
                ($"{baseUrl}/home", DateTime.UtcNow, "daily", 0.9),
                ($"{baseUrl}/cart", DateTime.UtcNow, "weekly", 0.5),
                ($"{baseUrl}/login", DateTime.UtcNow, "monthly", 0.3),
            };
            var products = service.GetAll();
            foreach (var product in products)
            {
                urls.Add(($"{baseUrl}/productView/{product.Id}", DateTime.UtcNow, "weekly", 0.7));
            }

            // ساخت XML
            XNamespace ns = "http://www.sitemaps.org/schemas/sitemap/0.9";
            var sitemap = new XElement(ns + "urlset",
                from url in urls
                select new XElement(ns + "url",
                    new XElement(ns + "loc", url.loc),
                    new XElement(ns + "lastmod", url.lastmod.ToString("yyyy-MM-dd")),
                    new XElement(ns + "changefreq", url.changefreq),
                    new XElement(ns + "priority", url.priority.ToString("F1"))
                )
            );

            var xml = new XDocument(sitemap);

            return Content(xml.ToString(), "application/xml", Encoding.UTF8);
        }
    }
}

