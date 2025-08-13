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
        public IActionResult Add(InOrderBuy input)=>Response(()=>service.Add(input));
        [Authorize(Roles = "Admin")]
        [HttpPost]
        public IActionResult ConfirmOrder(InId input) => Response(() => service.ChangeShopStatues(input.Id, ShopStatues.Confirm));
        [Authorize(Roles = "Admin")]
        [HttpPost]
        public IActionResult SendOrder(InId input) => Response(() => service.ChangeShopStatues(input.Id, ShopStatues.Send));
        [Authorize(Roles = "Admin")]
        [HttpPost]
        public IActionResult DeliveryOrder(InId input) => Response(() => service.ChangeShopStatues(input.Id, ShopStatues.Delivery));
        [Authorize(Roles = "Admin")]
        [HttpPost]
        public IActionResult RejectOrder(InId input) => Response(() => service.ChangeShopStatues(input.Id, ShopStatues.Reject));
         [HttpPost]
        public IActionResult GetAll(InputRequest inputRequest)=>Response(() =>service.GetAll(inputRequest));
        [HttpPost]
        public IActionResult GetAllUser(InputRequest inputRequest) => Response(() => service.GetAllUser(inputRequest,new Guid()));
        [HttpPost]
        public IActionResult GetById(int id)=>Response(()=>service.GetById(id));
        [HttpPost]
        public IActionResult GetDays() => Response(() => service.GetDays());
    }
}