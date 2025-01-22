import React from "react";
import axios from "axios";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import { TextBox } from "../tools/TextBox";
import { GetLocalhostServer } from "../tools/ChangeRoute";
export class User extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  AddData() {
    const someUrl = GetLocalhostServer("api/user/registerUser");
    axios
      .post(someUrl, this.state)
      .then((response) => {
        debugger
        if (response.status === 200) {
          NotificationManager.success("اطلاعات با موفقیت ثبت شد", "پیام");
          localStorage.setItem("user", JSON.stringify(this.state));
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
        <div className="card">
          <h5 className="card-header">اطلاعات کاربری</h5>
          <div className="card-body">
              <div className="row">
                <TextBox
                  context={this}
                  title="نام"
                  name="name"
                  className="col-md-6 col-sm-12"
                />
                <TextBox
                  context={this}
                  title="نام خانوادگی"
                  name="family"
                  className="col-md-6 col-sm-12"
                />
                <TextBox
                  context={this}
                  title="نام کاربری"
                  name="userName"
                  className="col-md-6 col-sm-12"
                />
                <TextBox
                  context={this}
                  title="کلمه عبور"
                  name="password"
                  type="password"
                  className="col-md-6 col-sm-12"
                />
                <TextBox
                  context={this}
                  title="شماره تلفن"
                  name="phone"
                  type="number"
                  className="col-md-6 col-sm-12"
                />
                <TextBox
                  context={this}
                  title="شماره همراه"
                  name="phoneNumber"
                  type="number"
                  className="col-md-6 col-sm-12"
                />
                <TextBox
                  context={this}
                  title="شهر"
                  name="city"
                  className="col-md-6 col-sm-12"
                />
                <TextBox
                  context={this}
                  title="منطقه"
                  name="region"
                  className="col-md-6 col-sm-12"
                />
                <TextBox
                  context={this}
                  title="کد پستی"
                  name="postalCode"
                  type="number"
                  className="col-md-6 col-sm-12"
                />
                <TextBox
                  context={this}
                  title="پست الکترونیکی"
                  name="email"
                  className="col-md-6 col-sm-12"
                />
                <TextBox
                  context={this}
                  title="آدرس"
                  name="address"
                  className="col-md-12 col-sm-12"
                />
              </div>

              <button
                onClick={() => this.AddData()}
                className="btn btn-primary"
              >
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
        </div>
        <NotificationContainer />
      </>
    );
  }
}
