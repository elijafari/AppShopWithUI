import React from "react";
import axios from "axios";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {NotificationContainer, NotificationManager} from 'react-notifications';
import "react-notifications/lib/notifications.css";
import "../../App.css";
import { TextBox } from "../tools/TextBox";
import {GetLocalhostServer } from "../tools/ChangeRoute";
export class User extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  AddData() {
    const someUrl = GetLocalhostServer("api/user/add");
    axios
      .post(someUrl, this.state)
      .then((response) => {
        if (response.status === 200) {
          NotificationManager.success("اطلاعات با موفقیت ثبت شد", "پیام");
          localStorage.setItem("user",JSON.stringify(this.state));
        } else {
          NotificationManager.error("خطای سیستمی رخ داده است", "خطا");
        }
      })
      .catch((error) => {
        NotificationManager.error(error.response.data, "خطا");
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
            <TextBox context={this} title="نام" name="name" colMd="col-md-6" />
            <TextBox
              context={this}
              title="نام خانوادگی"
              name="family"
              colMd="col-md-6"
            />
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


          {/* <ButtonCallApi
title="hhhhhhhhhhhh"
url="api/user/add"
keyStorage="user"
path="/home"
data={this.state}
            onClick={() => this.AddData2()}
            className="btn btn-primary"
          /> */}
        </div>

        <NotificationContainer/>
      </>
    );
  }
}
