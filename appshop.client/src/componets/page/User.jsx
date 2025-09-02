import React from "react";
import api from "../tools/axiosConfig";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css"
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import { TextBox } from "../tools/TextBox";
import { ButtonWaith } from "../tools/ButtonWaith";
import { ErrorHanding } from "../Utility";
import { parseJwt } from "../Utility";
import { QuestionsList } from "../tools/QuestionsList";
import { DropdownApp } from "../tools/DropdownApp";
import { Address } from "./Address";
export class User extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      address:[],
      isEdit: false,
      loading: false,
      questions: [],
    };
  }
  componentDidMount() {
    this.getUser();
    this.getQuestions();
    this.getAddress();

  }
  getUser() {
    let token = localStorage.getItem("token");
    let user = parseJwt(token);
    if (user != null)
      if (user.id != null) {
        api.post("/User/GetById/", { id: user.id }).then((response) => {
          var result = response.data.data;
          this.setState({ ...result, isEdit: true });
        });
      }
  }
  getQuestions() {
    var questions = [];
    QuestionsList().forEach((element, index) => {
      questions.push({ title: element, value: index + 1 });
    });
    this.setState(
      {
        questions
      }
    )
  }
  getAddress() {
    api.get("/Address/GetByUserId").then((response) => {
      this.setState({ address: response.data.data,

       });
    })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
      });
  }
  AddData() {
    this.setState({ loading: true });
    api.post(this.state.isEdit ? "/user/Edit/" : "/user/Add", this.state)
      .then(res => {
        this.setState({ loading: false });
        if (res.status === 200) {
          NotificationManager.success(res.data.message, "پیام");
          localStorage.setItem("token", res.data.data);
          setTimeout(() => {
            window.location.href = "/";
          }, 2000);

        } else {
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
        this.setState({ loading: false });
      })
  }

  render() {
    return (
      <>
        <div className="card">
          <p className="card-header">اطلاعات کاربری</p>
          <div className="card-body">
            <div className="row">
              <TextBox
                context={this}
                title="نام و نام خانوادگی"
                name="fullName"
                className="col-md-4 col-sm-12"
              />
              <TextBox
                context={this}
                title="نام کاربری"
                name="userName"
                className="col-md-4 col-sm-12"
              />
              {this.state.isEdit ? "" :
                <TextBox
                  context={this}
                  title="کلمه عبور"
                  name="password"
                  type="password"
                  className="col-md-4 col-sm-12"
                />
              }
              <TextBox
                context={this}
                title="شماره همراه"
                name="phone"
                type="number"
                className="col-md-4 col-sm-12"
              />
              <DropdownApp
                context={this}
                name="question"
                title="سوال امنیتی"
                className="col-md-4 col-sm-12"
                data={this.state.questions}
              />
              <TextBox
                context={this}
                title="پاسخ"
                name="answer"
                className="col-md-4 col-sm-12"
              />
            </div>
            <ButtonWaith onClick={() => this.AddData()}
              loading={this.state.loading}
              title="ثبت" />
          </div>
        </div>

        <div className="card">
          <p className="card-header">تاریخچه آدرس</p>
          <div className="card-body">
            <Address data={this.state.address}/>
          </div>
        </div>
        <NotificationContainer />
      </>
    );
  }
}
