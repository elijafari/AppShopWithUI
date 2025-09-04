import React, { Component } from "react";
import { FaEnvelope, FaPhone, FaMapMarkerAlt } from "react-icons/fa";

export default class ContactUs extends Component {
  constructor(props) {
    super(props);
    this.state = { name: "", email: "", message: "" };
  }

  handleChange = (e) => {
    this.setState({ [e.target.name]: e.target.value });
  };

  handleSubmit = (e) => {
    e.preventDefault();
    alert("پیام شما ارسال شد!");
    this.setState({ name: "", email: "", message: "" });
  };

  render() {
    return (
      <div className="container py-5">
        <h1 className="text-center mb-5">تماس با ما</h1>

        <div className="row g-4">
          {/* اطلاعات تماس */}
          <div className="col-md-4">
            <div className="card shadow-sm border-0 h-100">
              <div className="card-body">
                <h5 className="card-title mb-3">راه‌های ارتباطی</h5>
                <p className="mb-2"><FaEnvelope className="me-2 text-primary" /> email@example.com</p>
                <p className="mb-2"><FaPhone className="me-2 text-success" /> +98 912 345 6789</p>
                <p className="mb-2"><FaMapMarkerAlt className="me-2 text-danger" /> تهران، ایران</p>
              </div>
            </div>
          </div>

          {/* فرم تماس */}
          <div className="col-md-8">
            <div className="card shadow-sm border-0">
              <div className="card-body">
                <form onSubmit={this.handleSubmit}>
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
                    <label htmlFor="email" className="form-label">ایمیل شما</label>
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
                  <button type="submit" className="btn btn-primary w-100">ارسال پیام</button>
                </form>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
