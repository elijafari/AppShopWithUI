using AppShop.Business;
using AppShop.Business.DataModel;
using AppShop.Business.IService;
using AppShop.Business.Service;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Options;
using Newtonsoft.Json;
using System.Security.Claims;
using System.Text;
using static System.Net.WebRequestMethods;

namespace AppShop.Server.Controllers
{

    [ApiController]
    [Route("api/[controller]/[action]")]
    public class PaymentController : ControllerBase
    {
        private readonly HttpClient _httpClient;
        private readonly IOrderBuyService _orderBuyService;
        private readonly ILogService _logService;
        private readonly string merchantId = "54e3d792-c3a8-4c39-9419-6b0e6cb9ed78"; // MerchantID از زرین‌پال

        private string baseUrl = "https://payment.zarinpal.com/";
        private string urlFront = "https://electroej.ir";
        private string urlBack = "https://electroej.ir";

        public PaymentController(HttpClient httpClient, IOptions<AppSettings> appSetting, IOrderBuyService orderBuyService, ILogService logService)
        {
            _httpClient = httpClient;

            //for test local
            //urlFront = appSetting.Value.UrlFront;
            //urlBack = appSetting.Value.UrlBack;
            //baseUrl = "https://sandbox.zarinpal.com/";

            _orderBuyService = orderBuyService;
            _logService = logService;
        }

        [HttpPost]
        public async Task<IActionResult> RequestPayment([FromBody] InPaymentRequest model)
        {
            var dataOrder = _orderBuyService.GetByForPaymentId(model.OrderId);
            var data = new
            {
                merchant_id = merchantId,
                amount = dataOrder.FinalPrice * 10, // مبلغ به ریال
                callback_url = $"{urlBack}/api/payment/VerifyPayment?Amount={dataOrder.FinalPrice * 10}&oid={model.OrderId}",
                description = "خرید از فروشگاه الکتروایجی",
                metadata = new { email = dataOrder.Email, mobile = dataOrder.Phone },
                order_id = model.OrderId.ToString(),
            };
            //  Console.WriteLine("REQUEST SEND => " + JsonConvert.SerializeObject(data));
            var content = new StringContent(JsonConvert.SerializeObject(data), Encoding.UTF8, "application/json");

            var url = baseUrl + "pg/v4/payment/request.json";
            var response = await _httpClient.PostAsync(url, content);
            var result = await response.Content.ReadAsStringAsync();
            // Console.WriteLine("REQUEST RESULT => " + result);
            return Content(result, "application/json");
        }
        [HttpGet]
        public async Task<IActionResult> VerifyPayment([FromQuery] long Amount, [FromQuery] string Authority, [FromQuery] string Status, [FromQuery] Guid oId)
        {
            if (Status == "OK")
            {

                var data = new
                {
                    merchant_id = merchantId,
                    amount = Amount, // باید با مبلغ اولیه یکی باشد
                    authority = Authority
                };

                var content = new StringContent(JsonConvert.SerializeObject(data), Encoding.UTF8, "application/json");

                var response = await _httpClient.PostAsync(baseUrl + "pg/v4/payment/verify.json", content);
                var res = await response.Content.ReadAsStringAsync();

                var result = JsonConvert.DeserializeObject<ZarinpalVerifyResponse>(res).data;


                if (result.code == 100)
                {
                    // پرداخت موفق            
                    var trackingCode = _orderBuyService.UpdatePaymentCode(oId, result.ref_id.ToString());
                    return Redirect(Path.Combine(urlFront, $"payment/success/:{trackingCode}/:{result.ref_id}"));
                }
                else
                {
                    var id = User?.FindFirstValue("id");
                    _logService.Add($"payment : oid : {oId} Status: {Status} result: {res}",id);
                    var trackingCodeOnly = _orderBuyService.GetById(oId).TrackingCode;
                    return Redirect(Path.Combine(urlFront, $"payment/failed/:{trackingCodeOnly}"));
                }

            }
            else
            {
                var id = User?.FindFirstValue("id");
                _logService.Add($"payment : oid : {oId} Status: {Status}",id);
                var trackingCodeOnly = _orderBuyService.GetById(oId).TrackingCode;
                return Redirect(Path.Combine(urlFront, $"payment/failed/:{trackingCodeOnly}"));
            }
        }
    }
}
