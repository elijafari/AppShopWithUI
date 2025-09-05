export function parseJwt(token) {
    try {
        const base64Url = token.split('.')[1];
        const base64 = base64Url.replace(/-/g, '+').replace(/_/g, '/');
        const jsonPayload = decodeURIComponent(
            atob(base64)
                .split('')
                .map(c => '%' + ('00' + c.charCodeAt(0).toString(16)).slice(-2))
                .join('')
        );
        return JSON.parse(jsonPayload);
    } catch (e) {

        return null;
    }

}

export function ErrorHanding(NotificationManager, error) {
    if (error.response) {
        if (error.response.status === 400) {
            NotificationManager.error("اطلاعات وارد شده معتیر نیستند", "خطا");
        }
        else if (error.response.status === 401) {
            // حذف توکن و انتقال به صفحه لاگین
            localStorage.removeItem("token");
            NotificationManager.error("لطفا به سیستم وارد شوید", "خطا");
        }

        else if (error.response.status === 500 && error.response.data && error.response.data.message)
            NotificationManager.error(error.response.data.message, "خطا");
        else if (error.response.status === 409 && error.response.data && error.response.data.message)
            NotificationManager.error(error.response.data.message, "خطا");
    }
}
export function toEnglishDigits(str) {
  return str.replace(/[\u06F0-\u06F9]/g, d => d.charCodeAt(0) - 1776)
            .replace(/[\u0660-\u0669]/g, d => d.charCodeAt(0) - 1632);
}
export function normalizePrice(str) {
  return str
    .replace(/[\u06F0-\u06F9]/g, d => d.charCodeAt(0) - 1776) // اعداد فارسی
    .replace(/[\u0660-\u0669]/g, d => d.charCodeAt(0) - 1632) // اعداد عربی
    .replace(/[^0-9]/g, ""); // حذف جداکننده‌ها و کاراکترهای غیرعددی
}
export function toPersianDigits(number) {

  // تبدیل به فقط عدد
  var str = number.toString().replace(/\D/g, "");

  // تبدیل هر رقم لاتین یا عربی به فارسی
  const persianMap = ["۰","۱","۲","۳","۴","۵","۶","۷","۸","۹"];
  return str.replace(/\d/g, d => persianMap[d]);
}