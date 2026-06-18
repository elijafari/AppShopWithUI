using AppShop.Business;
using AppShop.Business.DataModel;
using AppShop.Business.Entity;
using AppShop.Business.IService;
using AppShop.Business.Service;
using AppShop.Server.Helper;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using System.Reflection.Metadata.Ecma335;
using System.Security.Claims;
using System.Threading.Tasks;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    [Authorize]
    public class LogController : BaseController
    {

        private readonly ILogService service;
        public LogController(ILogService _service, ILogService _logService) : base(_logService)
        {
            service = _service;
        }
        [Authorize(Roles = "Admin")]
        [HttpGet]
        public IActionResult GetAll()
        {
            return Response(service.GetList);
        }
        [Authorize(Roles = "Admin")]
        [HttpGet]
        public async Task<IActionResult> SendEmailFromHast()
        {
            var tag = await service.SendEmailFromHast();
            if (tag)
                return Ok("success");
            else
                return BadRequest();
        }
        [Authorize(Roles = "Admin")]
        [HttpGet]
        public async Task<IActionResult> SendEmail()
        {
            var tag = await service.SendEmail();
            if (tag)
                return Ok("success");
            else
                return BadRequest();
        }
    }
}