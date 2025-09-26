import React, { Component } from "react";
import { FaUsers, FaLightbulb, FaHandshake } from "react-icons/fa";

export default class AboutUs extends Component {
  render() {
    return (
    <div className="container py-5">
  <h1 className="text-center mb-5">درباره فروشگاه الکترو ایجی (ElectroEJ)</h1>

  <div className="row g-4">
    <div className="col-md-4">
      <div className="card h-100 shadow-sm border-0">
        <div className="card-body text-center">
          <FaUsers size={40} className="mb-3 text-primary" />
          <h5 className="card-title mb-2">تیم متخصص</h5>
          <p className="card-text text-muted">
            تیم <strong>ElectroEJ</strong> متشکل از متخصصان فروش و پشتیبانی 
            با تجربه است تا خرید <strong> لوازم الکتریکی </strong> 
            برای شما آسان و مطمئن باشد.
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
            در <strong>فروشگاه اینترنتی ElectroEJ</strong> 
            ما محصولات متنوعی مانند سیم و کابل، چراغ LED، 
            کلید و پریز و تجهیزات برق ساختمان را با کیفیت بالا عرضه می‌کنیم.
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
            هدف <strong>ElectroEJ</strong> ایجاد اعتماد و 
            ارائه بهترین تجربه خرید آنلاین <strong> لوازم برقی و الکترونیکی </strong> 
            با پشتیبانی سریع و ارسال مطمئن است.
          </p>
        </div>
      </div>
    </div>
  </div>
</div>

    );
  }
}
