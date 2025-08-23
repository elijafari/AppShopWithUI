using AppShop.Business.Entity;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using AppShop.Business.IService;
using AppShop.Server.Helper;
using AppShop.Business.DataModel;
using Microsoft.AspNetCore.Authorization;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class UserController : BaseController
    {
        private readonly IUserService service;
        public UserController(IUserService _service, ILogService _logService) : base(_logService)
        {
            service = _service;
        }

        [HttpPost]
        public IActionResult Add([FromBody] User input) => Response(() => service.Add(input));
        [Authorize]
        [HttpPost]
        public IActionResult Edit([FromBody] User input) => Response(() => service.Edit(input));
        [HttpPost]
        public IActionResult Login([FromBody] InUser input) => Response(() => service.Login(input));
        [HttpPost]
        public IActionResult AddAdmin() => Response(() => service.AddAdmin());
        [HttpPost]
        [Authorize]
        public IActionResult GetById(InRecord input) => Response(() => service.GetById(new Guid(input.Id)));
        [HttpPost]
        public IActionResult GetForForget(InUserForget input) => Response(() => service.GetForForget(input));
        [HttpPost]
        public IActionResult CheckAnswer(InUserAnswer input) => Response(() => service.CheckAnswer(input));
        [HttpPost]
        public IActionResult ResetPassword(InUserNewPassword input) => Response(() => service.ResetPassword(input));
    }
}