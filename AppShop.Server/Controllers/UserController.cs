using AppShop.Business.Entity;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using AppShop.Business.IService;
using AppShop.Server.Helper;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class UserController : BaseController    
    {
        private readonly IUserService service;
        public UserController(IUserService _service, ILogService _logService):base(_logService)
        {
            service = _service;
        }

        [HttpPost]
        public IActionResult Add([FromBody] User input)=> Response(() => service.Add(input));
        [HttpPost]
        public IActionResult Login([FromBody] User input)=> Response(() => service.Login(input));
        [HttpPost]
        public IActionResult AddAdmin() => Response(() => service.AddAdmin());

    }
}