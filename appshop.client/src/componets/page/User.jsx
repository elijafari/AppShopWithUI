import React from "react";
import api from "../tools/axiosConfig";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import { TextBox } from "../tools/TextBox";
import { ErrorHanding } from "../Utility";
export class User extends React.Component {
  constructor(props) {
    super(props);
    this.state = {};
  }

  AddData() {
    api.post("/user/Add", this.state)
      .then(res => {
        if (res.status === 200) {
          NotificationManager.success(res.data.message, "پیام");
          localStorage.setItem("token", JSON.stringify(this.state));
        } else {
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => ErrorHanding(NotificationManager, error));
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
          </div>
        </div>
        <NotificationContainer />
      </>
    );
  }
}
