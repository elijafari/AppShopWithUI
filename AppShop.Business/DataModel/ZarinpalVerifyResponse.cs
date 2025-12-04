using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace AppShop.Business.DataModel
{
    public class ZarinpalVerifyResponse
    {
        public VerifyData data { get; set; }
        public List<ZarinpalError> errors { get; set; }
    }

    public class VerifyData
    {
        public object wages { get; set; }
        public int code { get; set; }
        public string message { get; set; }
        public string card_hash { get; set; }
        public string card_pan { get; set; }
        public long ref_id { get; set; }
        public string fee_type { get; set; }
        public int fee { get; set; }
        public int shaparak_fee { get; set; }
        public string order_id { get; set; }
    }

    public class ZarinpalError
    {
        public int code { get; set; }
        public string message { get; set; }
    }
}