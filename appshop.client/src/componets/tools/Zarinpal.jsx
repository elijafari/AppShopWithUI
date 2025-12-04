import { ErrorHanding } from "../Utility";
import api from "../tools/axiosConfig";
export function SentDataToZarinpal(NotificationManager, amount) {


    // فراخوانی API بک‌اند برای گرفتن authority
    api.post("/payment/requestPayment", { amount: amount })
        .then(resp => {
            if (resp.data.data && resp.data.data.authority) {
                const authority = resp.data.data.authority;

                let urlZaripal = 'https://sandbox.zarinpal.com/pg/StartPay/';
                // let urlZaripal = 'https://www.zarinpal.com/pg/StartPay/'
                // ریدایرکت به زرین‌پال
                window.location.href = urlZaripal + authority
                
            }
        })
        .catch(error => {
            ErrorHanding(NotificationManager, error);
        });
}
