import { ErrorHanding } from "../Utility";
import api from "../tools/axiosConfig";
export function SentDataToZarinpal(NotificationManager, orderId) {


    // فراخوانی API بک‌اند برای گرفتن authority
    api.post("/payment/requestPayment", { orderId: orderId })
        .then(resp => {
            if (resp.data.data && resp.data.data.authority) {
                const authority = resp.data.data.authority;
             
               let urlZaripal = import.meta.env.VITE_ZARINPAL_URL
                 window.location.href = urlZaripal + authority

            }
        })
        .catch(error => {
            ErrorHanding(NotificationManager, error);
        });
}
