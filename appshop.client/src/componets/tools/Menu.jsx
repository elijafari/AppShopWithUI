import React, { Component } from "react";
import "bootstrap/dist/css/bootstrap.rtl.min.css";
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
        {/* بخش بالای Navbar */}
        <div className="row d-flex justify-content-between align-items-center px-3">
          <Watch />
          <div className="col-auto small text-black-200 mt-2">
            {this.state.user && (
              <p className="mb-0">کاربر گرامی : {this.state.user.name}</p>
            )}
          </div>
        </div>

        {/* Navbar اصلی */}
        <nav className="navbar navbar-expand-lg  navbar-dark" style={{ backgroundColor: "#ecf019ff", fontFamily: "Vazirmatn",fontSize:"10px" }}>
          {/* دکمه موبایل */}
          <button
            className="navbar-toggler"
            type="button"
            onClick={this.toggleMenu}
          >
            <span className="navbar-toggler-icon"></span>
          </button>

          {/* منو */}
          <div
            className={`collapse navbar-collapse ${
              this.state.isOpen ? "show" : ""
            }`}
            id="navbarTogglerDemo02"
          >
            <ul className="navbar-nav mr-auto mt-2 mt-lg-0">
              <li className="nav-item active">
                <a className="nav-link" href="/home">جستجوی کالا</a>
              </li>

              {/* فقط برای ادمین */}
              {this.state.isAdmin && (
                <>
                  <li className="nav-item">
                    <a className="nav-link" href="/product">تعریف کالا</a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="/productList">لیست کالاها</a>
                  </li>
                </>
              )}

              {/* فقط برای کاربر لاگین‌شده */}
              {this.state.user && (
                <>
                  <li className="nav-item">
                    <a className="nav-link" href="/orders">لیست سفارشات</a>
                  </li>
                  <li className="nav-item">
                    <a className="nav-link" href="/user">ویرایش پروفایل</a>
                  </li>
                </>
              )}
            </ul>
          </div>

          {/* سمت راست Navbar */}
          {this.state.isLoging === false ? (
            <ButtonRoute
              title="ورود / ثبت نام"
              link="/login"
              className="btn btn-light"
            />
          ) : (
            <div className="d-flex align-items-center">
              <a className="nav-link position-relative" href="/cart">
                <FaShoppingCart className="shopIcon" />
                {this.state.sum > 0 && (
                  <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
                    {this.state.sum}
                  </span>
                )}
              </a>
              <ModalApp
                className="btn btn-danger ms-2"
                msg="آیا می‌خواهید از سیستم خارج شوید؟"
                headerTitle="خروج"
                noTitle="خیر"
                yesTitle="بله"
                btnTitle="خروج"
                handleOk={this.logout}
              />
            </div>
          )}
        </nav>

        {/* خروجی صفحات */}
        <Outlet />
        <NotificationContainer />
      </>
    );
  }
}
