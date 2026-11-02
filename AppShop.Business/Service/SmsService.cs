
using AppShop.Business.IService;
using AppShop.Business.Mapping;
using RestSharp;


namespace AppShop.Business.Service
{
    public class SmsService : ISmsService
    {
        AppShopDBContext _db;
        private readonly RestClient _client;
        private readonly string BaseUrl = "https://api.iranpayamak.com";
        private readonly string ApiKey="ZDe8OiR0oKZ84jq71XoLFo7v4bUmxRQOzJ9fYFCQDDSuuzUJk6";
        private readonly string LineNumber= "90008361";
        private readonly ILogService _logService;
        public SmsService(AppShopDBContext db,ILogService logService)
        {
            _db = db;
            var clientOptions = new RestClientOptions(BaseUrl);
            _client = new RestClient(clientOptions);
            _logService = logService;
        }
        private string GetMessae(SmsType smsType)
        {
            var msg = string.Empty;
            if (smsType == SmsType.Order)
            {
                msg = @"الکتروایجی" + Environment.NewLine +
                    "سفارش اولیه شما با موفقیت ثبت شد." + Environment.NewLine +
                    "پیگیری سفارش:" + Environment.NewLine +
                    "https://electroej.ir/orders";
            }
            else if (smsType == SmsType.Pay)
            {
                msg = @"الکتروایجی" + Environment.NewLine +
                                    "پرداخت شما با موفقیت ثبت شد." + Environment.NewLine +
                                    "پیگیری سفارش:" + Environment.NewLine +
                                    "https://electroej.ir/orders";
            }
            else if (smsType == SmsType.Pay)
            {
                msg = @"الکتروایجی" + Environment.NewLine +
                          "شما یک سفارش پرداخت نشده دارید لطفا سفارش خود را پردا خت و یا لغو کنید." + Environment.NewLine +
                          "پیگیری سفارش:" + Environment.NewLine +
                          "https://electroej.ir/orders";
            }

            return msg;
        }
        public async Task<bool> SendAsync(Guid userId, SmsType smsType)
        {
            string message = GetMessae(smsType);
            int f = message.Length;
            string? mobile = _db.Users.FirstOrDefault(x => x.Id == userId)?.Phone;
            if (string.IsNullOrEmpty(mobile) || mobile == "0" || string.IsNullOrEmpty(message))
                return false;

            var request = new RestRequest("/ws/v1/sms/simple", Method.Post);
            request.AddJsonBody(new
            {
                text = message,
                line_number = LineNumber,
                recipients = new[] { mobile },
                number_format = "english",
                schedule = (string)null
            });
            return await SendRequest(request);

        }


        public async Task<bool> SendPatternAsync(Guid userId, long trackingCode, SmsType smsType)
        {
            var user = _db.Users.FirstOrDefault(x => x.Id == userId);
            if (user == null)
                return false;
            if (string.IsNullOrEmpty(user.Phone))
                return false;

            var attributes = new Dictionary<string, string>
            {
                { "n", user.FullName },
                { "c", trackingCode.ToString() }
            };

            string patternCode = "gIPssPzUQa";
            switch (smsType)
            {
                case SmsType.Pay:
                    patternCode = "n9zIngyAY7";
                    break;
            }
            var request = new RestRequest("/ws/v1/sms/pattern", Method.Post);
            request.AddJsonBody(new
            {
                code = patternCode,
                attributes = attributes,
                recipient = user.Phone,
                line_number = LineNumber,
                number_format = "english"
            });
            return await SendRequest(request);
        }
        public async Task<bool> SendPatternMeAsync(long trackingCode)
        {
            var attributes = new Dictionary<string, string>
            {
                { "c", trackingCode.ToString() }
            };

            string patternCode = "lLWInB9zAS";

            var request = new RestRequest("/ws/v1/sms/pattern", Method.Post);
            request.AddJsonBody(new
            {
                code = patternCode,
                attributes = attributes,
                recipient = "09124462355",
                line_number = LineNumber,
                number_format = "english"
            });
            return await SendRequest(request);
        }

        private async Task<bool> SendRequest(RestRequest request)
        {
            request.AddHeader("Accept", "application/json");
            request.AddHeader("Api-Key", ApiKey);


            var response = await _client.ExecuteAsync(request);

            if (!response.IsSuccessful)
                _logService.Add($"SMS:{ response.Content}");

            return response.IsSuccessful;
        }
    }
}
