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
using System.Security.Claims;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    [Authorize]
    public class AddressController : BaseController
    {

        private readonly IAddressService service;
        public AddressController(IAddressService _service, ILogService _logService):base(_logService)
        {
            service = _service;
        }
        [HttpGet]
        public IActionResult GetByUserId()
        {
            return Response(()=>
            {
                var id = User.FindFirstValue("id");
               return service.GetByUserId(new Guid(id));
            });
        }
    }
}