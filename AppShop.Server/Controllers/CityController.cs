using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Server.Helper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Text.Json;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class CityController : BaseController
    {

        private readonly ICityService service;
        public CityController(ICityService _service, ILogService _logService) : base(_logService)
        {
            service = _service;
        }
        [HttpGet]
        public ActionResult Add()
        {
            string filePath = Path.Combine(AppDomain.CurrentDomain.BaseDirectory, "Data", "Cities.json");

            string json =System.IO. File.ReadAllText(filePath);

           var cities = JsonSerializer.Deserialize<List<InCity>>(json);
            return Ok(service.Add(cities));
        }
        [HttpGet]
        public IActionResult GetAll() => Response(() => service.GetAll());
    
    }
}