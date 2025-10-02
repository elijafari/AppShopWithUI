import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import { FaUserLock } from "react-icons/fa";
import "../../App.css"; // برای استایل انیمیشن

export class NoAccess extends Component {
    render() {
        return (
         <div className="container vh-100 d-flex flex-column justify-content-start align-items-center text-center pt-5">
  <div
    className="card shadow-lg p-4 border-0 animate__animated animate__fadeInDown"
    style={{
      maxWidth: "480px",
      borderRadius: "20px",
      background: "linear-gradient(145deg, #ffffff, #f8f9fa)",
      marginTop: "60px" // کارت کمی بالاتر بیاد
    }}
  >
    <div className="card-body">
      <h1 className="text-danger mb-4 d-flex justify-content-center align-items-center gap-2">
        <FaUserLock size={40} className="me-2" />
        عدم دسترسی
      </h1>

      <p className="lead text-muted mb-4">
        متأسفانه شما اجازه دسترسی به این بخش را ندارید.
      </p>

      <hr className="my-4" />

      <div className="d-flex flex-column gap-3">
        <button
          className="btn btn-outline-warning w-100 shadow-sm"
          onClick={() => (window.location.href = "/")}
        >
          بازگشت به صفحه اصلی
        </button>

        <button
          className="btn btn-warning w-100 shadow-sm"
          onClick={() => (window.location.href = "/login")}
        >
          ورود به سیستم
        </button>
      </div>
    </div>
  </div>
</div>
   );
    }
}
