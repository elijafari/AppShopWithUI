using AppShop.Business.Entity;
using Microsoft.AspNetCore.Mvc;
using System.Net;
using AppShop.Business.IService;
using AppShop.Server.Helper;
using AppShop.Business.DataModel;
using Microsoft.AspNetCore.Authorization;
using DNTCaptcha.Core;
using Microsoft.AspNetCore.Http.Features;
using Microsoft.Extensions.Primitives;
using AppShop.Business;

namespace AppShop.Server.Controllers
{
    [ApiController]
    [Route("api/[controller]/[action]")]
    public class UserController : BaseController
    {
        private readonly IUserService service;
        private readonly IDNTCaptchaValidatorService validator;

        public UserController(IUserService _service, ILogService _logService,
            IDNTCaptchaValidatorService _validator) : base(_logService)
        {
            service = _service;
            validator = _validator;
        }

        [HttpPost]
        public IActionResult Add([FromBody] User input, [FromServices] IDNTCaptchaValidatorService validatorService) => Response(() => service.Add(input));
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
        public IActionResult CheckAnswer(InUserAnswer input) => Response(() => service.CheckAnswer(input));
        [HttpPost]
        public IActionResult ResetPassword(InUserNewPassword input) => Response(() => service.ResetPassword(input));
    }
}