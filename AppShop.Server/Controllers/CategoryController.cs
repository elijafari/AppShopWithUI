using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Server.Helper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using System.Net;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class CategoryController : BaseController
    {

        private readonly ICategoryService service;
        public CategoryController(ICategoryService _service, ILogService _logService) : base(_logService)
        {
            service = _service;
        }      
        [HttpGet]
        [Authorize(Roles = "Admin")]
        public IActionResult GetAll() => Response(() => service.GetAll(false));
        [HttpGet]
        public IActionResult GetAllForSearch() => Response(() => service.GetAll(true));
    }
}