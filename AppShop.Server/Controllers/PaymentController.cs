using AppShop.Business;
using AppShop.Business.DataModel;
using AppShop.Business.IService;
using AppShop.Business.Service;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using System.Text;

namespace AppShop.Server.Controllers
{

    [ApiController]
    [Route("api/[controller]/[action]")]
    public class PaymentController : ControllerBase
    {
        private readonly HttpClient _httpClient;
        private readonly AppSettings _appSetting;
        private readonly IOrderBuyService _orderBuyService;
        private readonly string merchantId = "60cd6860-87fb-487a-a571-0394ea2c5576"; // MerchantID از زرین‌پال
        private readonly string baseUrl = "https://sandbox.zarinpal.com/";//https://api.zarinpal.com/
        public PaymentController(HttpClient httpClient, IOptions<AppSettings> appSetting,IOrderBuyService orderBuyService)
        {
            _httpClient = httpClient;
            _appSetting = appSetting.Value;
            _orderBuyService = orderBuyService;
        }

        [HttpPost]
        public async Task<IActionResult> RequestPayment([FromBody] InPaymentRequest model)
        {
            var dataOrder = _orderBuyService.GetByForPaymentId(model.OrderId);
            var data = new
            {
                merchant_id = merchantId,
                amount = model.Amount * 10, // مبلغ به ریال
                callback_url = Path.Combine(_appSetting.UrlBack, "api/payment/VerifyPayment?Amount=" + model.Amount * 10),
                description = "خرید از فروشگاه الکتروایجی",
                metadata = new { email = dataOrder.Email, mobile = dataOrder.Phone },
                order_id = model.OrderId,
            };

            var content = new StringContent(JsonConvert.SerializeObject(data), Encoding.UTF8, "application/json");

            var url = baseUrl + "pg/v4/payment/request.json";
            var response = await _httpClient.PostAsync(url, content);
            var result = await response.Content.ReadAsStringAsync();

            return Content(result, "application/json");
        }
        [HttpGet]
        public async Task<IActionResult> VerifyPayment([FromQuery] long Amount, [FromQuery] string Authority, [FromQuery] string Status)
        {

            if (Status != "OK")
                return Redirect(Path.Combine(_appSetting.UrlFront, "payment/failed"));

            var data = new
            {
                merchant_id = merchantId,
                amount = Amount, // باید با مبلغ اولیه یکی باشد
                authority = Authority
            };

            var content = new StringContent(JsonConvert.SerializeObject(data), Encoding.UTF8, "application/json");

            var response = await _httpClient.PostAsync(baseUrl + "pg/v4/payment/verify.json", content);
            var result = await response.Content.ReadAsStringAsync();

            var res = JsonConvert.DeserializeObject<ZarinpalVerifyResponse>(result);
      

            if (res.data.code == 100)
            {
                // پرداخت موفق
                var refId = res.data.ref_id;
                var trackingCode = _orderBuyService.GetTrackingCode(Guid.Parse(res.data.order_id));
                return Redirect(Path.Combine(_appSetting.UrlFront, $"payment/success/:{refId}/:{trackingCode}"));
            }
            else
            {
                return Redirect(Path.Combine(_appSetting.UrlFront, "payment/failed"));
            }
        }
    }
}
