import React, { Component } from "react";
import { FaUsers, FaLightbulb, FaHandshake } from "react-icons/fa";

export default class AboutUs extends Component {
  render() {
    return (
      <div className="container py-5">
        <h1 className="text-center mb-5">درباره ما</h1>

        <div className="row g-4">
          <div className="col-md-4">
            <div className="card h-100 shadow-sm border-0">
              <div className="card-body text-center">
                <FaUsers size={40} className="mb-3 text-primary" />
                <h5 className="card-title mb-2">تیم متخصص</h5>
                <p className="card-text text-muted">
                  تیم ما متشکل از متخصصان با تجربه در فروش و پشتیبانی برای تجربه خرید بهتر شماست.
                </p>
              </div>
            </div>
          </div>

          <div className="col-md-4">
            <div className="card h-100 shadow-sm border-0">
              <div className="card-body text-center">
                <FaLightbulb size={40} className="mb-3 text-warning" />
                <h5 className="card-title mb-2">نوآوری و کیفیت</h5>
                <p className="card-text text-muted">
                  ارائه محصولات با کیفیت و راهکارهای نوآورانه برای راحتی و رضایت مشتریان.
                </p>
              </div>
            </div>
          </div>

          <div className="col-md-4">
            <div className="card h-100 shadow-sm border-0">
              <div className="card-body text-center">
                <FaHandshake size={40} className="mb-3 text-success" />
                <h5 className="card-title mb-2">اعتماد مشتریان</h5>
                <p className="card-text text-muted">
                  هدف ما ایجاد رابطه بلندمدت و اعتماد با مشتریان از طریق خدمات عالی است.
                </p>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
