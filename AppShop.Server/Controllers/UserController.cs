using AppShop.Business.Entity;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using AppShop.Business.IService;
using AppShop.Server.Helper;
using AppShop.Business.DataModel;
using Microsoft.AspNetCore.Authorization;
using AppShop.Business.Service;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class UserController : BaseController
    {
        private readonly IUserService service;
        private readonly IEmailService emailService;
        public UserController(IUserService _service,IEmailService _emailService, ILogService _logService) : base(_logService)
        {
            service = _service;
            emailService = _emailService;
        }

        [HttpPost]
        public IActionResult Add([FromBody] User input) => Response(() => service.Add(input));
        [Authorize]
        [HttpPost]
        public IActionResult Edit([FromBody] User input) => Response(() => service.Edit(input));
        [HttpPost]
        public IActionResult Login([FromForm] InUser input) => Response(() =>
                {
                    var token = service.Login(input);
                    //if (!validator.HasRequestValidCaptchaEntry())
                    //{
                    //    throw new PersianException("کد امنیتی اشتباه است. دوباره تلاش کنید");
                    //}
                    return token;
                });
        [HttpPost]
        public IActionResult AddAdmin() => Response(() => service.AddAdmin());
        [HttpPost]
        [Authorize]
        public IActionResult GetById(InRecord input) => Response(() => service.GetById(new Guid(input.Id)));
        [HttpPost]
        public IActionResult GetForForget(InUserForget input) => Response(() => service.GetForForget(input));
        [HttpPost]
        public IActionResult CheckCode(InUserForgetCode input) => Response(() => service.CheckCode(input));
        [HttpPost]
        public IActionResult ResetPassword(InUserNewPassword input) => Response(() => service.ResetPassword(input));
        [HttpGet]
        public Task<IActionResult> SendEmailAsync() => ResponseAsync(async () => await emailService.SendEmailAsync("e.jafari64@gmail.com", "test app", "elo elo elo"));
    }
}