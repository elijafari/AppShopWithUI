import React, { Component } from "react";
import api from "../tools/axiosConfig";
import { ErrorHanding, validInput } from "../Utility";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import { TextBox } from "../tools/TextBox";
import { ButtonWaith } from "../tools/ButtonWaith";
import { FaEye, FaEyeSlash } from "react-icons/fa";

export class ForgtoPassword extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      step:1, // مرحله فعلی
      loading: false
    };
    this.classBtn = "btn btn-warning w-100 mt-2"
  }
  togglePassword () {
    this.setState({ showPassword: !this.state.showPassword });
  };
  sendEmail() {
    if (!validInput(NotificationManager, this.state.userName, "نام کاربری یا شماره همراه"))
      return;
    this.setState({ loading: true });

    api.post("user/GetForForget/", { userName: this.state.userName, email: this.state.email })
      .then(res => {
        this.setState({ step: 2, tokenCode: res.data.data, loading: false });
      })
      .catch((error) => {
        this.setState({ loading: false });
        ErrorHanding(NotificationManager, error);
      });
  };


  // مرحله 2 → بررسی جواب
  handleCheckAnswer() {
    if (!validInput(NotificationManager, this.state.code, "کد"))
      return;
    this.setState({ loading: true });
    api.post("user/CheckCode/",
      {
        code: this.state.code,
        tokenCode: this.state.tokenCode
      })
      .then(res => {
        if (res.data.data)
          this.setState({ step: 3, loading: false });
        else {
          this.setState({ loading: false });
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => {
        this.setState({ loading: false });
        ErrorHanding(NotificationManager, error);
      });


  }

  // مرحله 3 → تغییر رمز
  handleResetPassword() {
    if (!validInput(NotificationManager, this.state.newPassword, "رمز عبور جدید"))
      return;


    this.setState({ loading: true })
    api.post("user/ResetPassword/",
      {
        userName: this.state.userName,
        newPassword: this.state.newPassword
      })
      .then(res => {
        this.setState({ loading: false });
        if (res.status === 200) {
          NotificationManager.success("رمز عبور با موفقیت تغییر کرد ✅", "پیام");
          localStorage.setItem("token", res.data.data);
          setTimeout(() => {
            window.location.href = "/";
          }, 2000);

        } else {
          this.setState({ loading: false });
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => {
        this.setState({ loading: false });
        ErrorHanding(NotificationManager, error);
      });
  };
  handleInputChange = (e) => {
    this.setState({ "newPassword": e.target.value });
  };
  render() {
    return (
      <>
        <div className="container mt-5" style={{ maxWidth: "500px" }}>
          <h3 className="text-center mb-4">فراموشی رمز عبور</h3>


          {/* مرحله 1 */}
          {this.state.step === 1 && (
            <>
              <TextBox
                context={this}
                title="نام کاربری / شماره همراه"
                name="userName"
                className="col-md-12 col-sm-12"
              />
              <ButtonWaith onClick={() => this.sendEmail()}
                loading={this.state.loading}
                className={this.classBtn}
                title="دریافت کد" />

            </>
          )}

          {/* مرحله 2 */}
          {this.state.step === 2 && (
            <>
              <p><b>سوال امنیتی:</b> {this.state.question}</p>
              <TextBox
                context={this}
                title="کد ارسالی به پست الکترونیکی خود را وارد کنید"
                name="code"
                type="number"
                className="col-md-12 col-sm-12"
              />
              <ButtonWaith onClick={() => this.handleCheckAnswer()}
                loading={this.state.loading}
                className={this.classBtn}
                title="تایید" />
            </>
          )}

          {/* مرحله 3 */}
          {this.state.step === 3 && (
            <>
               <div className="form-outline mb-3">
                                <label className="form-label">رمز عبور جدید</label>
                                <div className="input-group">
                                  <input
                                    type={this.state.showPassword ? "text" : "password"}
                                    className="form-control"
                                    name="newPassword"
                                    onChange={(e) => this.handleInputChange(e)}
                                  />
                                  <span
                                    className="input-group-text"
                                    style={{ cursor: "pointer" }}
                                    onClick={()=>this.togglePassword()}
                                  >
                                    {this.state.showPassword ? <FaEyeSlash /> : <FaEye />}
                                  </span>
                                </div>
                              </div>
              <ButtonWaith
                title="تغییر رمز"
                className={this.classBtn}
                onClick={() => this.handleResetPassword()}
                loading={this.state.loading}
              />
            </>
          )}
        </div>

        <NotificationContainer />
      </>
    );
  }
}
