import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import { Link } from "react-router-dom";
import { Outlet } from "react-router-dom";
import { FaShoppingCart, FaUserCircle} from "react-icons/fa";
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
        <header
          className="shadow-sm rounded-3 border bg-yellow"
          style={{
            fontFamily: "Vazirmatn",
          }}
        >
          <div className="container py-3">

            <div className="row align-items-center">

{/* لوگو و نام فروشگاه */}
<div className="col-12 col-md-3 mb-3 mb-md-0">
  <div    className="d-flex align-items-center justify-content-center justify-content-md-start"  >
    {/* لوگو */}
    <img
      src="./icon-48.png"
      alt="ElectroEJ"
      style={{
        width: "48px",
        height: "48px",
        objectFit: "contain"
      }}
    />

    {/* متن */}
    <div
      style={{
        display: "flex",
        flexDirection: "column",
        textAlign: "right",
        lineHeight: "1.3"
      }}
    >
      <span
        style={{
          fontSize: "19px",
          fontWeight: "700",
          color: "#333"
        }}
      >
        ElectroEJ
      </span>

      <span
        style={{
          fontSize: "11px",
          color: "#777",
          marginTop: "3px",
          whiteSpace: "nowrap"
        }}
      >
        فروشگاه اینترنتی الکتروایجی
      </span>
    </div>
  </div>
</div>
              {/* متن وسط */}
              <div className="col-12 col-md-6 text-center mb-3 mb-md-0">

                <h5
                  className="fw-bold mb-2"
                  style={{ color: "#333" }}
                >
                  خرید آنلاین لوازم الکتریکی
                </h5>

                <small
                  className="text-secondary"
                  style={{ fontSize: "14px" }}
                >
                  خرید آسان و سریع انواع تجهیزات و قطعات برقی و روشنایی
                </small>

              </div>

              {/* دکمه ها */}
              <div className="col-12 col-md-3">

                <div
                  className="d-flex justify-content-center justify-content-md-end align-items-center gap-2"
                >

                  {/* سبد خرید */}

                  <a
                    href="/cart"
                    className="btn btn-outline-success position-relative"
                  >
                    <FaShoppingCart />

                    {this.state.sum > 0 && (
                      <span
                        className="position-absolute badge rounded-pill bg-danger"
                        style={{
                          top: "-6px",
                          right: "-6px",
                          fontSize: "10px",
                        }}
                      >
                        {this.state.sum.toLocaleString("fa-IR")}
                      </span>
                    )}

                  </a>

                  {/* ورود یا کاربر */}

                  {!this.state.isLoging ? (

                    <ButtonRoute
                      title="ورود / ثبت نام"
                      link="/login"
                      className="btn btn-warning"
                    />

                  ) : (

                    <div className="dropdown">

                      <button
                        className="btn btn-warning dropdown-toggle"
                        data-bs-toggle="dropdown"
                      >
                        <FaUserCircle className="ms-2" />
                        {this.state.user.name}
                      </button>

                      <ul className="dropdown-menu dropdown-menu-end text-end">

                        <li>
                          <a className="dropdown-item" href="/user">
                            پروفایل
                          </a>
                        </li>

                        <li>
                          <a className="dropdown-item" href="/orders">
                            سفارشات
                          </a>
                        </li>

                        {this.state.isAdmin && (
                          <>
                            <li><hr className="dropdown-divider" /></li>

                            <li>
                              <a className="dropdown-item" href="/categoryList">
                                لیست گروه کالاها
                              </a>
                            </li>
                            <li>
                              <a className="dropdown-item" href="/productList">
                                لیست کالاها
                              </a>
                            </li>
                            <li>
                              <a className="dropdown-item" href="/homeAdmin">
                                لیست کالاها همراه عکس
                              </a>
                            </li>


                            <li><hr className="dropdown-divider" /></li>
                            <li>
                              <a className="dropdown-item" href="/visitList">
                                بازدیدها
                              </a>
                            </li>
                            <li><hr className="dropdown-divider" /></li>

                            <li>
                              <a className="dropdown-item" href="/reportProduct">
                                گزارش فروش بر اساس کالاها
                              </a>
                            </li>
                            <li>
                              <a className="dropdown-item" href="/reportProvince">
                                گزارش فروش بر اساس استان ها
                              </a>
                            </li>


                            <li><hr className="dropdown-divider" /></li>
                            <li>
                              <a className="dropdown-item" href="/commentProductList">
                                نظرات
                              </a>
                            </li>
                            <li>
                              <a className="dropdown-item" href="/commentList">
                                پیام ها
                              </a>
                            </li>
                            <li>
                              <a className="dropdown-item" href="/log">
                                خطا ها
                              </a>
                            </li>
                          </>
                        )}

                        <li><hr className="dropdown-divider" /></li>

                        <li className="px-2">

                          <button type="button"
                            className="btn btn-danger w-100"
                            onClick={this.logout} style={{ fontFamily: 'Vazirmatn' }}>
                            خروج
                          </button>
                        </li>

                      </ul>

                    </div>

                  )}

                </div>

              </div>

            </div>

          </div>

        </header>
        < nav
          className="navbar navbar-expand-lg navbar-dark p-2 mt-2 mb-2"
          style={{
            backgroundColor: "#FFD700", // رنگ طلایی
            fontFamily: "Vazirmatn",
            fontSize: "12px",
            borderRadius: "10px"
          }
          }
        >
          {/* دکمه موبایل */}
          < button
            className="navbar-toggler p-2"
            type="button"
            onClick={this.toggleMenu}
            style={{ border: "outset" }}
          >
            <span
              className="navbar-toggler-icon "
              style={{ width: "20px", height: "20px" }} // کوچکتر کردن آیکون
            ></span>
          </button >

          {/* منو */}
          < div
            className={`collapse navbar-collapse ${this.state.isOpen ? "show" : ""}`}
            id="navbarTogglerDemo02"
          >
            <ul className="navbar-nav mr-auto mt-2 mt-lg-0">
              <li className="nav-item active">
                <a className="nav-link custom-link" href="/home">
                  صفحه اصلی
                </a>
              </li>
              <li className="nav-item active">
                <a className="nav-link custom-link" href="/contactUs">
                  تماس با ما                </a>
              </li>
              <li className="nav-item active">
                <a className="nav-link custom-link" href="/aboutUs">
                  درباره  ما
                </a>
              </li>

            </ul>
          </div >
        </nav >
        {/* خروجی صفحات */}
        < Outlet />
        <NotificationContainer />
      </>
    );
  }
}
