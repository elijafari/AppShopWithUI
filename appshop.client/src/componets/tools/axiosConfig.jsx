// src/api/axiosConfig.js
import axios from "axios";

console.log("url:" + import.meta.env.VITE_API_URL);
const api = axios.create({
  baseURL: import.meta.env.VITE_API_URL+"/api",
  timeout: 10000,
  withCredentials: true   // 👈 اینجا
});

// قبل از ارسال هر درخواست
api.interceptors.request.use(
  (config) => {
    // گرفتن توکن از localStorage
    const token = localStorage.getItem("token");
    if (token) {
      config.headers.Authorization = `Bearer ${token}`;
    }

    config.headers["Cache-Control"] = "no-cache";
    config.headers["Pragma"] = "no-cache";
    config.headers["Expires"] = "0";
    // اگر داده‌ها از نوع FormData بودن → content-type رو تغییر بده
    if (config.data instanceof FormData) {
      config.headers["Content-Type"] = "multipart/form-data";
    }
    else if (config.data instanceof URLSearchParams) {
      // برای form-urlencoded
      config.headers["Content-Type"] = "application/x-www-form-urlencoded";
    }
    else {
      // پیش‌فرض JSON
      config.headers["Content-Type"] = "application/json";

    }

    return config;
  },
  api.interceptors.response.use(

    (response) => response,
    (error) => {
      if (error.response && error.response.status === 401) {
        localStorage.setItem("403-ej", error.config.url);
        window.location.href = "/noAccess"; // مسیر صفحه عدم دسترسی
      }
      else if (error.response && error.response.status === 403) {
        localStorage.setItem("401-ej", error.config.url);
        window.location.href = "/noAccess"; // مسیر صفحه عدم دسترسی
      }
      return Promise.reject(error);
    }
  ),
  (error) => Promise.reject(error)
);

export default api;

