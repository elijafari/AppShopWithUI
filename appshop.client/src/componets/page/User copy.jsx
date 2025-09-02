import React from "react";
import api from "../tools/axiosConfig";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import DropdownApp from "../tools/DropdownApp";
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
export class User1 extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      isEdit:false,
      loading: false,
      cityAll: [],
      province: [],
      city: [],
      questions: [],
      updateKeyCity: 1
    };
  }
  componentDidMount() {

    this.getCity();
    this.getUser();
    this.getQuestions();

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
  getCity() {
    api.get("/City/GetAll").then((response) => {
      var cityAll = response.data.data;
      var array = [];
      cityAll.filter(x => x.parentId == null).forEach((element) => {
        array.push({ title: element.name, value: element.id });
      });
      this.setState({
        cityAll
        , province: array
      });
    });
  }
  getQuestions() {
    var array = ["نام اولین معلمی که داشتی چه بود؟",
       "اسم اولین مدرسه‌ای که رفتی چی بود؟", 
        "اولین شهری که به سفر رفتی کجا بود؟",
         "اسم بهترین دوستت در دوران کودکی چی بود؟", 
         "نام خیابانی که در آن بزرگ شدی چیست؟", 
         "اسم اولین فیلمی که در سینما دیدی چی بود؟",
        "رنگ مورد علاقه‌ات در دوران کودکی چی بود؟"
    ]
    var questions = [];
    array.forEach((element) => {
      questions.push({ title: element, value:array.findIndex(x=>x==element)+1 });
    });
    this.setState(
      {
        questions
      }
    )
  }
  onChangeProvice(e) {
    var city = this.state.cityAll.filter(x => x.parentId == e.value);
    var array = [];
    city.forEach((element) => {
      array.push({ title: element.name, value: element.id });
    });
    this.setState(
      {
        city: array,
        updateKeyCity: this.state.updateKeyCity + 1,
      }
    )
  }
  AddData() {
    this.setState({ loading: true });
    api.post(this.state.isEdit ? "/user/Edit/":"/user/Add", this.state)
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
                name="name"
                className="col-md-4 col-sm-12"
              />
              <TextBox
                context={this}
                title="نام کاربری"
                name="userName"
                className="col-md-4 col-sm-12"
              />
              <TextBox
                context={this}
                title="کلمه عبور"
                name="password"
                type="password"
                className="col-md-4 col-sm-12"
              />
              <TextBox
                context={this}
                title="شماره تلفن"
                name="phone"
                type="number"
                className="col-md-4 col-sm-12"
              />
              <TextBox
                context={this}
                title="شماره همراه"
                name="phoneNumber"
                type="number"
                className="col-md-4 col-sm-12"
              />
              <DropdownApp
                context={this}
                name="provinceId"
                title="استان"
                className="col-md-4 col-sm-12"
                data={this.state.province}
                onChange={(e) => this.onChangeProvice(e)}
              />
              <DropdownApp
                context={this}
                name="cityId"
                title="شهر"
                className="col-md-4 col-sm-12"
                data={this.state.city}
                updateKey={this.state.updateKeyCity}
              />
              <TextBox
                context={this}
                title="کد پستی"
                name="postalCode"
                type="number"
                className="col-md-4 col-sm-12"
              />
              <TextBox
                context={this}
                title="پست الکترونیکی"
                name="email"
                className="col-md-4 col-sm-12"
              />
              <TextBox
                context={this}
                title="آدرس"
                name="address"
                className="col-md-12 col-sm-12"
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
                name="Answer"
                className="col-md-4 col-sm-12"
              />
            </div>
            <ButtonWaith onClick={() => this.AddData()}
              loading={this.state.loading}
              title="ثبت" />
          </div>
        </div>
        <NotificationContainer />
      </>
    );
  }
}
