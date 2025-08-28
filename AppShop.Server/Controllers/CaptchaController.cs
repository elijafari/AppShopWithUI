using DNTCaptcha.Core;
using Microsoft.AspNetCore.Mvc;
using System.Net;
namespace AppShop.Server.Controllers
{

    [ApiController]
    [Route("api/[controller]")]
    public class CaptchaController : ControllerBase
    {
        private readonly IDNTCaptchaApiProvider _provider;

        public CaptchaController(IDNTCaptchaApiProvider provider)
        {
            _provider = provider;
        }

        // تولید تصویر کپچا
        [HttpGet("generate")]
        public IActionResult Generate()
        {
            var captcha = _provider.CreateDNTCaptcha(new DNTCaptchaTagHelperHtmlAttributes()
            {

                Language= Language.English,
                DisplayMode= DisplayMode.ShowDigits, // یا ShowDigits
                Max= 9000,
                Min= 1,
                });

            return Ok(captcha);
        }

    }

}
