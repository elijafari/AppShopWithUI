import React from "react";
import "../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {NotificationContainer, NotificationManager} from 'react-notifications';
import "react-notifications/lib/notifications.css";
import "../App.css";
import { TextBox } from "./TextBox";
import  api  from "../tools/axiosConfig";
export class User extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  AddData() {
    api.post("user/add", this.state)
        .then((response) => {
            if (response.data.success) {
            NotificationManager.success(response.data.message, "پیام");
            localStorage.setItem("user", response.data.data);
        } else {
            NotificationManager.error(response.data.message, "خطا");
        }
      })
      .catch((error) => {
          NotificationManager.error(error.response.data.message, "خطا");
      });
  }
  handleInputChange(e) {
    this.setState({ name: e.target.value });
  }
  render() {
    return (
      <>
        <h5> اطلاعات کاربری</h5>
        <div className="formInfo">
          <div className="row">
            <TextBox context={this} title="نام و نام خانوادگی" name="name" colMd="col-md-6" />
            <TextBox
              context={this}
              title="نام کاربری"
              name="userName"
              colMd="col-md-6"
            />
            <TextBox
              context={this}
              title="کلمه عبور"
              name="password"
              colMd="col-md-6"
              type="password"
            />
            <TextBox
              context={this}
              title="شماره تلفن"
              name="phone"
              colMd="col-md-6"
              type="number"
            />
            <TextBox
              context={this}
              title="شماره همراه"
              name="phoneNumber"
              colMd="col-md-6"
              type="number"
            />
            <TextBox context={this} title="شهر" name="city" colMd="col-md-4" />
            <TextBox
              context={this}
              title="منطقه"
              name="region"
              colMd="col-md-4"
            />
            <TextBox
              context={this}
              title="کد پستی"
              name="postalCode"
              colMd="col-md-4"
              type="number"
            />
            <TextBox
              context={this}
              title="آدرس"
              name="address"
              colMd="col-md-12"
            />
            <TextBox
              context={this}
              title="پست الکترونیکی"
              name="email"
              colMd="col-md-12"
            />
          </div>

          <button
            onClick={() => this.AddData()}
            className="btn btn-primary">
            ثبت
          </button>
        </div>

        <NotificationContainer/>
      </>
    );
  }
}
