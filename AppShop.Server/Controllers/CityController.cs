using AppShop.Business.IService;
using AppShop.Server.Helper;
using Microsoft.AspNetCore.Mvc;

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
        public IActionResult GetAll() => Response(() => service.GetAll());
    
    }
}