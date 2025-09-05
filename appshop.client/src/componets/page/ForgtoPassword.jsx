import React, { Component } from "react";
import api from "../tools/axiosConfig";
import { ErrorHanding } from "../Utility";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import { TextBox } from "../tools/TextBox";
import { ButtonWaith } from "../tools/ButtonWaith";
import {QuestionsList} from "../tools/QuestionsList";

export class ForgtoPassword extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      step: 1, // مرحله فعلی
      loading: false
    };
  }
  // مرحله 1 → گرفتن سؤال امنیتی
  handleGetQuestion() {
    api.post("user/GetForForget/", { userName: this.state.userName })
      .then(res => {
  
        this.setState({step:2, question:QuestionsList()[ res.data.data.question-1] });
      })
      .catch((error) => ErrorHanding(NotificationManager, error));
  };


  // مرحله 2 → بررسی جواب
  handleCheckAnswer() {
    api.post("user/CheckAnswer/",
      {
        userName: this.state.userName,
        answer: this.state.answer
      })
      .then(res => {
        if (res.data.data)
          this.setState({ step: 3 });
        else
          NotificationManager.error("جواب اشتباه است", "خطا");
      })
      .catch((error) => ErrorHanding(NotificationManager, error));
  }

  // مرحله 3 → تغییر رمز
  handleResetPassword() {
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
      });
  };

  render() {
    return (
      <>
        <div className="container mt-5" style={{ maxWidth: "500px" }}>
          <h3 className="text-center mb-4">فراموشی رمز عبور</h3>


          {/* مرحله 1 */}
          {this.state.step ===1 && (
            <>
              <TextBox
                context={this}
                title="نام کاربری / شماره همراه"
                name="userName"
                className="col-md-12 col-sm-12"
              />
              <button
                className="btn btn-primary w-100"
                onClick={() => this.handleGetQuestion()}
              >
                ادامه
              </button>
            </>
          )}

          {/* مرحله 2 */}
          {this.state.step === 2 && (
            <>
              <p><b>سوال امنیتی:</b> {this.state.question}</p>
              <TextBox
                context={this}
                title="پاسخ شما"
                name="answer"
                className="col-md-12 col-sm-12"
              />
              <button
                className="btn btn-primary w-100"
                onClick={() => this.handleCheckAnswer()}
              >
                تایید
              </button>
            </>
          )}

          {/* مرحله 3 */}
          {this.state.step === 3 && (
            <>
              <TextBox
                context={this}
                title="رمز جدید"
                name="newPassword"
                className="col-md-12 col-sm-12"
              />
              <ButtonWaith
                title="تغییر رمز"
                className="btn btn-success w-100"
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
