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
    public class ContactController : BaseController
    {

        private readonly IContactService service;
        public ContactController(IContactService _service, ILogService _logService) : base(_logService)
        {
            service = _service;
        }
        [HttpPost]
        public IActionResult Add(Contact input) => Response(() => service.Add(input));
    }
}