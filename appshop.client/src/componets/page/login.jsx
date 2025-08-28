import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import { TextBox } from "../tools/TextBox";
import  api  from "../tools/axiosConfig";
import { FaLock } from "react-icons/fa";
import { ButtonRoute } from "../tools/ButtonRoute";
import { ErrorHanding } from "../Utility";

export class Login extends Component {
  constructor(props) {
    super(props);
    this.state = {};
  } 

    login = () => {
        api.post("/user/login", {
            userName: this.state.userName,
            password: this.state.password
        })
        .then(res => {
            localStorage.setItem("token", res.data.data);
            window.location.href = "/"; 
        })
        .catch((error) =>ErrorHanding(NotificationManager,error));
    };
  render() {
    return (
      <>
        <section
          className="vh-100"
          style={{ backgroundColor: "rgb(198 233 186)" }}
        >
          <div className="container py-5 h-100">
            <div className="row d-flex justify-content-center align-items-center h-100">
              <div className="col-12 col-md-8 col-lg-6 col-xl-5">
                <div
                  className="card shadow-2-strong"
                  style={{ borderRadius: "1rem" }}
                >
                  <div className="card-body p-5 text-center">
                    <h3 className="mb-5">
                      ورود به سیستم <FaLock />
                    </h3>
                    <TextBox
                      context={this}
                      title="نام کاربری"
                      name="userName"
                      className="col-md-12 col-sm-12"
                    />
                    <TextBox
                      context={this}
                      title="رمز عبور"
                      name="password"
                      type="password"
                      className="col-md-12 col-sm-12"
                      isLeft={true}
                      />
                    <div className="form-check d-flex justify-content-start mb-4">
                      <input
                        className="form-check-input"
                        type="checkbox"
                        value=""
                        id="form1Example3"
                        isLeft={true}
                      />
                      <label className="form-check-label" for="form1Example3">
                        {" "}
                        فراموشی رمز عبور{" "}
                      </label>
                    </div>

                    <button
                      data-mdb-button-init
                      data-mdb-ripple-init
                      className="btn btn-primary btn-lg btn-block marginApp"
                      type="submit"
                      onClick={() => this.login()}
                    >
                      ورود
                    </button>
                    <ButtonRoute
                      title="ایجاد کاربری جدید"
                      link="/user"
                      className="btn btn-primary btn-lg btn-block marginApp"
                    />
                  </div>
                </div>
              </div>
            </div>
          </div>
        </section>

        <NotificationContainer />
      </>
    );
  }
}
