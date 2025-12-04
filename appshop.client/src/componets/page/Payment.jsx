import React from "react";
import "bootstrap/dist/css/bootstrap.min.css";
import "react-notifications/lib/notifications.css";
export default class Payment extends React.Component {
  constructor(props) {
    super(props);

  }

  render() {
    return (
      <div className="container my-5">
        <div className="row justify-content-center">
          <div className="col-md-8">
            <div className="card shadow-lg border-0 text-center p-4">
              
              {/* آیکون */}
              <div className="mb-4">
                {this.props.isSuccess ? (
                  <i className="bi bi-check-circle-fill text-success" style={{ fontSize: "4rem" }}></i>
                ) : (
                  <i className="bi bi-x-circle-fill text-danger" style={{ fontSize: "4rem" }}></i>
                )}
              </div>

              {/* پیام موفق */}  
              {this.props.isSuccess && (
                <>
                  <h4 className="fw-bold text-success mb-3">پرداخت شما با موفقیت ثبت شد 🎉</h4>
                  <p className="fs-5">
                    کد پیگیری پرداخت:{" "}
                    <span className="fw-bold text-primary">{this.props.refId}</span>
                  </p>
                </>
              )}

              {/* پیام ناموفق */}
              {!this.props.isSuccess && (
                <>
                  <h4 className="fw-bold text-danger mb-3">پرداخت انجام نشد ❌</h4>
                  <p className="fs-5">در صورت کسر مبلغ، طی نهایتاً ۷۲ ساعت برگشت داده می‌شود.</p>
                </>
              )}

              {/* شماره سفارش */}
              <p className="fs-5 mt-3">
                شماره سفارش:{" "}
                <span className="fw-bold text-primary">{this.props.trackingCode}</span>
              </p>

              {/* دکمه‌ها */}
              <div className="d-flex justify-content-center gap-3 mt-4">
                <button
                  className="btn btn-outline-primary"
                  onClick={() => (window.location.href = "/")}
                >
                  بازگشت به صفحه اصلی
                </button>

                <button
                  className="btn btn-success"
                  onClick={() => (window.location.href = "/orders")}
                >
                  مشاهده سفارش‌ها
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    );
  }
}
