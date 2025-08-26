import React, { Component } from "react";
import "bootstrap/dist/css/bootstrap.rtl.min.css";
import "../../App.css";
import { Outlet } from "react-router-dom";
import { FaShoppingCart } from "react-icons/fa";
import { ModalApp } from "./ModalApp";
import { ButtonRoute } from "./ButtonRoute";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {
    NotificationContainer,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import { parseJwt } from "../Utility";
import Watch from "./watch";
import { use } from "react";


export class Menu extends Component {
    constructor(props) {
        super(props);
        this.state = {
            sum: 0,
            isLoging: false,
            isAdmin: true,
        };
    }

    componentDidMount() {
        setInterval(() => {
            let array = JSON.parse(localStorage.getItem("selectedItem"));
            let token = localStorage.getItem("token");
            let user = parseJwt(token);
            let sum = 0;
            if (array != null)
                if (array.length > 0) {
                    for (let index = 0; index < array.length; index++) {
                        const element = array[index];
                        sum += element.count;
                    }
                }
            this.setState({
                sum: sum,
                user: user,
                isLoging: user != null,
                isAdmin: use != null && user.role == "admin"
            });
        }, 1000);
    }
    logout() {
        localStorage.clear();
        window.location.href = "/";
    }

    render() {
        return (
            <>
                <div className="row d-flex justify-content-between align-items-center">
                    <Watch />

                    {/* سمت چپ: نام کاربر */}
                    <div className="col-auto small text-black-200 mt-2">
                        {this.state.user != null && (
                            <p className="mb-0">
                                کاربر گرامی : {this.state.user.name}
                            </p>
                        )}
                    </div>
                </div>
                <nav className="navbar navbar-expand-lg bg-success navbar-dark">
                    <button
                        className="navbar-toggler"
                        type="button"
                        data-toggle="collapse"
                        data-target="#navbarTogglerDemo02"
                        aria-controls="navbarTogglerDemo02"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                    >
                        <span className="navbar-toggler-icon"></span>
                    </button>

                    <div className="collapse navbar-collapse" id="navbarTogglerDemo02">
                        <ul className="navbar-nav mr-auto mt-2 mt-lg-0">
                            <li className="nav-item active">
                                <a className="nav-link" href="\home">
                                    جسنجوی کالا <span className="sr-only"></span>
                                </a>
                            </li>
                            {this.state.user && this.state.isAdmin && (
                                <>
                                    <li className="nav-item active">
                                        <a className="nav-link" href="\product">
                                            تعریف کالا<span className="sr-only"></span>
                                        </a>
                                    </li>
                                    <li className="nav-item active">
                                        <a className="nav-link" href="\productList">
                                            لیست کالا ها<span className="sr-only"></span>
                                        </a>
                                    </li>
                                </>)}

                            {this.state.user && (
                                <>   <li className="nav-item active">
                                    <a className="nav-link" href="\orders">
                                        لیست سفارشات<span className="sr-only"></span>
                                    </a>
                                </li>

                                    <li className="nav-item active">
                                        <a className="nav-link" href="\user">
                                            ویرایش پروفایل کاربری<span className="sr-only"></span>
                                        </a>
                                    </li></>)}
                        </ul>
                    </div>
                    {this.state.isLoging == false ? (
                        <ButtonRoute
                            title="ورود / ثبت نام"
                            link="/login"
                            className="btn btn-light"
                        />
                    ) : (
                        <>
                            <a className="nav-link" href="\cart">
                                <span className="top-0 start-100 translate-middle badge rounded-pill bg-danger">
                                    {this.state.sum}
                                </span>{" "}
                                <FaShoppingCart className="shopIcon" />
                            </a>{" "}
                            <ModalApp
                                className="btn btn-danger"
                                msg="آیا می خواهید از سسیتم خارج شوید؟"
                                headerTitle="خروج"
                                noTitle="خیر"
                                yesTitle="بله"
                                btnTitle="خروج"
                                handleOk={() => this.logout()}
                            ></ModalApp>
                        </>
                    )}
                </nav>
                <Outlet />

                <NotificationContainer />
            </>
        );
    }
}
