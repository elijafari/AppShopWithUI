import React from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import { TextBox } from "../tools/TextBox";
import { Capcha } from "../tools/Capcha";
import api from "../tools/axiosConfig";
import { FaLock } from "react-icons/fa";
import { ErrorHanding } from "../Utility";  
export class Login extends React. Component {
  constructor(props) {
    super(props);
    this.state = {
    };
  }

  login = () => {
    const formData = new URLSearchParams();
    formData.append("username", this.state.userName);
    formData.append("password", this.state.password);
    //formData.append("captchaInput", this.state.captchaInput);
    //formData.append("dntCaptchaTextValue", this.state.dntCaptchaTextValue);
    //formData.append("dntCaptchaTokenValue", this.state.dntCaptchaTokenValue);



    api.post("/user/login", formData)
      .then(res => {
        localStorage.setItem("token", res.data.data);
        window.location.href = "/";
      })
      .catch((error) => ErrorHanding(NotificationManager, error));
  }
  createUser() {
    window.location.href = "/user";
  }
  forgtoPassword() {
    window.location.href = "/forgtoPassword";
  }
  ReadCapcha(e) {
    this.setState({ ...e });
  }
  render() {
    return (
      <>

        <section
          className="vh-100 d-flex align-items-center"
          style={{
            background: "linear-gradient(135deg, #c6e9ba, #a8dadc)",
            direction: "rtl", // راست چین
          }}
        >
          <div className="container">
            <div className="row justify-content-center">
              <div className="col-12 col-md-8 col-lg-6 col-xl-5">
                <div
                  className="card shadow-lg border-0 text-end"
                  style={{ borderRadius: "1.2rem" }}
                >
                  <div className="card-body p-5">
                    <h3 className="mb-4 text-center fw-bold text-primary">
                      ورود به سیستم <FaLock className="mb-1" />
                    </h3>

                    {/* نام کاربری */}
                    <div className="form-outline mb-4">
                      <TextBox
                        context={this}
                        title="نام کاربری"
                        name="userName"
                      />
                    </div>

                    {/* رمز عبور */}
                    <div className="form-outline mb-3">
                      <TextBox
                        context={this}
                        title="رمز عبور"
                        name="password"
                        type="password"
                      />
                    </div>
                    {/*<div className="row align-items-center">*/}
                    {/*  <div className="col">*/}
                    {/*    <TextBox*/}
                    {/*      context={this}*/}
                    {/*      title="کد امنیتی"*/}
                    {/*      name="captchaInput"*/}
                    {/*    />*/}
                    {/*  </div>*/}
                    {/*  */}{/*<div className="col-auto">*/}
                    {/*  */}{/*  <Capcha sentCapcha={(e) => this.ReadCapcha(e)} />*/}
                    {/*  */}{/*</div>*/}
                    {/*</div>*/}
                    {/* فراموشی رمز */}
                    <div className="d-flex justify-content-between align-items-center mb-4 flex-row-reverse">
                      <a
                        href="#"
                        className="text-decoration-none text-primary fw-semibold"
                        onClick={() => this.forgtoPassword()}
                      >
                        فراموشی رمز عبور؟
                      </a>
                    </div>

                    {/* دکمه ورود */}
                    <button
                      className="btn btn-primary btn-lg w-100 mb-3"
                      type="submit"
                      onClick={() => this.login()}
                    >
                      ورود
                    </button>

                    {/* دکمه ایجاد کاربر جدید */}
                    <button
                      className="btn btn-outline-primary btn-lg w-100"
                      onClick={() => this.createUser()}
                    >
                      ایجاد حساب کاربری جدید
                    </button>
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
