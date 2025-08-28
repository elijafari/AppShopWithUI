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
    public class OrderBuyController : BaseController
    {

        private readonly IOrderBuyService service;
        public OrderBuyController(IOrderBuyService _service, ILogService _logService):base(_logService)
        {
            service = _service;
        }
        [HttpPost]
        public IActionResult Add(InOrderBuy input)
        {
            return Response(()=>
            {
                var id = User.FindFirstValue("id");
               return service.Add(input, new Guid(id));
            });
        }
        [Authorize(Roles = "Admin")]
        [HttpPost]
        public IActionResult ChangeShopStatues(InChangeStatues input) => Response(() => service.ChangeShopStatues(input.Id, input.shopStatues));
        [Authorize]
        [HttpPost]
        public IActionResult CancelOrder(InId input) => Response(() => service.ChangeShopStatues(input.Id, ShopStatues.Cancel));
        [HttpPost]
        public IActionResult GetAll()
        {
            return Response(() =>
            {
                var id = User.FindFirstValue("id");
                var isAdmin=User.FindFirstValue(ClaimTypes.Role) == "Admin" ? true : false;
                return service.GetAll( new Guid(id),isAdmin);
            });
        }
        [HttpPost]
        public IActionResult GetById(InId input) =>Response(()=>service.GetById(input.Id));
        [HttpGet]        
        public IActionResult GetDays() => Response(() => service.GetDays());
    }
}