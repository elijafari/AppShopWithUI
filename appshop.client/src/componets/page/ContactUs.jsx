import React from "react";
import { FaEnvelope, FaPhone, FaMapMarkerAlt } from "react-icons/fa";
import api from "../tools/axiosConfig";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import { ErrorHanding, validInput } from "../Utility";
import { ButtonWaith } from "../tools/ButtonWaith";
export default class ContactUs extends React.Component {
  constructor(props) {
    super(props);
      this.state={ name: "", email: "", message: "" ,loading:false};
  
  }

  handleChange = (e) => {
    this.setState({ [e.target.name]: e.target.value });
  };

  handleSubmit = (e) => {
    if (!validInput(NotificationManager, this.state.name, "نام"))
      return;
    if (!validInput(NotificationManager, this.state.email, "پست الکترونیکی"))
      return;
    if (!validInput(NotificationManager, this.state.message, "متن پیام"))
      return;

    this.setState({ loading: true });
    api.post("/Contact/Add", this.state)
      .then(res => {
        this.setState({ loading: false });
        if (res.status === 200) {
          NotificationManager.success("پیام با موفقیت ارسال شد", "پیام");
          this.setState({ name: "", email: "", message: "" });
        } else {
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
        this.setState({ loading: false });
      })
  };

  render() {
    return (
      <>      
      <div className="container py-5">
        <h1 className="text-center mb-5">تماس با ما</h1>

        <div className="row g-4">
          {/* اطلاعات تماس */}
          <div className="col-md-4">
            <div className="card shadow-sm border-0 h-100">
              <div className="card-body">
                <h5 className="card-title mb-3">راه‌های ارتباطی</h5>
                <p className="mb-2"><FaEnvelope className="me-2 text-primary" />info@electroej.ir</p>
                <p className="mb-2"><FaPhone className="me-2 text-success" /> 09124462355 </p>
                <p className="mb-2"><FaMapMarkerAlt className="me-2 text-danger" /> تهران، ایران</p>
              </div>
            </div>
          </div>

          {/* فرم تماس */}
          <div className="col-md-8">
            <div className="card shadow-sm border-0">
              <div className="card-body">
                  <div className="mb-3">
                    <label htmlFor="name" className="form-label">نام شما</label>
                    <input
                      type="text"
                      className="form-control"
                      id="name"
                      name="name"
                      value={this.state.name}
                      onChange={this.handleChange}
                      required
                    />
                  </div>
                  <div className="mb-3">
                    <label htmlFor="email" className="form-label">پست الکترونیکی شما</label>
                    <input
                      type="email"
                      className="form-control"
                      id="email"
                      name="email"
                      value={this.state.email}
                      onChange={this.handleChange}
                      required
                    />
                  </div>
                  <div className="mb-3">
                    <label htmlFor="message" className="form-label">پیام شما</label>
                    <textarea
                      className="form-control"
                      id="message"
                      name="message"
                      rows="5"
                      value={this.state.message}
                      onChange={this.handleChange}
                      required
                    ></textarea>
                  </div>

                    <ButtonWaith
                                  title="ارسال پیام"
                                  className="btn btn-warning col-md-4 col-sm-12"
                                  onClick={() => this.handleSubmit()}
                                  loading={this.state.loading}
                                />
                 
              </div>
            </div>
          </div>
        </div>
      </div>
        <NotificationContainer />
      </>
    );
  }
}
