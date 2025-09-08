import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "../../../node_modules/bootstrap/dist/js/bootstrap.bundle.min.js";
export  class SidebarMenu extends Component {
  render() {
    return (
      <>
        {/* نوار بالای سایت */}
        <nav
          className="navbar navbar-dark px-3"
          style={{
            backgroundColor: "#FFD700", // طلایی
            fontFamily: "Vazirmatn",
            fontSize: "14px",
          }}
        >
          {/* دکمه باز شدن منو */}
          <button
            className="btn btn-dark"
            type="button"
            data-bs-toggle="offcanvas"
            data-bs-target="#offcanvasRight"
            aria-controls="offcanvasRight"
          >
            ☰ منو
          </button>
        </nav>

        {/* منو کناری (Sidebar راست) */}
        <div
          className="offcanvas offcanvas-end"
          tabIndex="-1"
          id="offcanvasRight"
          aria-labelledby="offcanvasRightLabel"
          style={{ fontFamily: "Vazirmatn" }}
        >
          <div className="offcanvas-header">
            <h5 className="offcanvas-title fw-bold" id="offcanvasRightLabel">
              منو
            </h5>
            <button
              type="button"
              className="btn-close text-reset"
              data-bs-dismiss="offcanvas"
              aria-label="Close"
            ></button>
          </div>

          <div className="offcanvas-body">
            <ul className="list-unstyled">
              <li className="mb-3">
                <a
                  href="/home"
                  className="text-decoration-none text-dark fw-semibold"
                >
                  🏠 صفحه اصلی
                </a>
              </li>

              {/* فقط برای ادمین */}
              {this.props.isAdmin && (
                <>
                  <li className="mb-3">
                    <a
                      href="/product"
                      className="text-decoration-none text-dark fw-semibold"
                    >
                      ➕ تعریف کالا
                    </a>
                  </li>
                  <li className="mb-3">
                    <a
                      href="/productList"
                      className="text-decoration-none text-dark fw-semibold"
                    >
                      📦 لیست کالاها
                    </a>
                  </li>
                </>
              )}

              {/* فقط برای کاربر لاگین‌شده */}
              {this.props.user && (
                <>
                  <li className="mb-3">
                    <a
                      href="/orders"
                      className="text-decoration-none text-dark fw-semibold"
                    >
                      🧾 لیست سفارشات
                    </a>
                  </li>
                  <li className="mb-3">
                    <a
                      href="/user"
                      className="text-decoration-none text-dark fw-semibold"
                    >
                      👤 ویرایش پروفایل
                    </a>
                  </li>
                </>
              )}
            </ul>
          </div>
        </div>
      </>
    );
  }
}
