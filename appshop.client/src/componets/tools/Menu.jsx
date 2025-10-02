import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "../../App.css";
import { Outlet } from "react-router-dom";
import { FaShoppingCart } from "react-icons/fa";
import { ModalApp } from "./ModalApp";
import { ButtonRoute } from "./ButtonRoute";
import {
  NotificationContainer,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import { parseJwt } from "../Utility";
import Watch from "./watch";

export class Menu extends Component {
  constructor(props) {
    super(props);
    this.state = {
      sum: 0,
      isLoging: false,
      isAdmin: false,
      user: null,
      isOpen: false, // ✅ کنترل باز/بسته شدن منو
    };
  }

  componentDidMount() {
    this.interval = setInterval(() => {
      let array = JSON.parse(localStorage.getItem("selectedItem"));
      let token = localStorage.getItem("token");
      let user = parseJwt(token);
      let sum = 0;
      if (array && array.length > 0) {
        for (let item of array) {
          sum += item.count;
        }
      }
      this.setState({
        sum,
        user,
        isLoging: user != null,
        isAdmin: user != null && user.role === "Admin",
      });
    }, 1000);
  }

  componentWillUnmount() {
    clearInterval(this.interval);
  }

  toggleMenu = () => {
    this.setState({ isOpen: !this.state.isOpen });
  };

  logout = () => {
    localStorage.clear();
    window.location.href = "/";
  };

  render() {
    return (
      <>
<div className="sticky-top bg-light shadow-sm">
  <div className="d-flex justify-content-between align-items-center px-3 py-2">
    
    {/* سمت چپ - ساعت */}
    <div className="d-flex align-items-center">
      <Watch />
    </div>

    {/* سمت راست - کاربر و ورود/خروج */}
    <div className="d-flex align-items-center gap-3">
      {this.state.user && (
        <span className="mb-0 small text-black">
         {this.state.user.name}
        </span>
      )}
  {/* آیکون سبد خرید */}
          <a className="nav-link position-relative" href="/cart">
            <FaShoppingCart className="shopIcon fs-4" />
            {this.state.sum > 0 && (
              <span
                className="position-absolute badge rounded-pill bg-danger"
                style={{
                  top: "-5px",
                  right: "-10px",
                  fontSize: "0.7rem",
                }}
              >
                {this.state.sum}
              </span>
            )}
          </a>

      {this.state.isLoging === false ? (
        <ButtonRoute
          title="ورود / ثبت نام"
          link="/login"
          className="btn btn-light btn-sm"
        />
      ) : (
        <div className="d-flex align-items-center gap-2">
        
          {/* دکمه خروج */}
          <ModalApp
            className="btn btn-danger btn-sm"
            msg="آیا می‌خواهید از سیستم خارج شوید؟"
            headerTitle="خروج"
            noTitle="خیر"
            yesTitle="بله"
            btnTitle="خروج"
            handleOk={this.logout}
          />
        </div>
      )}
    </div>
  </div>
</div>


        {/* Navbar اصلی */}

        <nav
          className="navbar navbar-expand-lg navbar-dark p-2"
          style={{
            backgroundColor: "#FFD700", // رنگ طلایی
            fontFamily: "Vazirmatn",
            fontSize: "12px",
          }}
        >
          {/* دکمه موبایل */}
          <button
            className="navbar-toggler p-2"
            type="button"
            onClick={this.toggleMenu}
            style={{ border: "outset" }}
          >
            <span
              className="navbar-toggler-icon "
              style={{ width: "20px", height: "20px" }} // کوچکتر کردن آیکون
            ></span>
          </button>

          {/* منو */}
          <div
            className={`collapse navbar-collapse ${this.state.isOpen ? "show" : ""
              }`}
            id="navbarTogglerDemo02"
          >
            <ul className="navbar-nav mr-auto mt-2 mt-lg-0">
              <li className="nav-item active">
                <a className="nav-link custom-link" href="/home">
                  صفحه اصلی
                </a>
              </li>

              {/* فقط برای ادمین */}
              {this.state.isAdmin && (
                <>
                  <li className="nav-item">
                    <a className="nav-link custom-link" href="/product">
                      تعریف کالا
                    </a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link custom-link" href="/productList">
                      لیست کالاها
                    </a>
                  </li>
                </>
              )}

              {/* فقط برای کاربر لاگین‌شده */}
              {this.state.user && (
                <>
                  <li className="nav-item">
                    <a className="nav-link custom-link" href="/orders">
                      لیست سفارشات
                    </a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link custom-link" href="/user">
                      ویرایش پروفایل
                    </a>
                  </li>
                </>
              )}
            </ul>
          </div>
        </nav>


        {/* خروجی صفحات */}
        <Outlet />
        <NotificationContainer />
      </>
    );
  }
}
