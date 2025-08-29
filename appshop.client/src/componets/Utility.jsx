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