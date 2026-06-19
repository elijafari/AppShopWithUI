
import { useParams } from "react-router-dom";
import { useEffect } from "react";
import { SentDataToZarinpal } from "./Zarinpal";

export function TrackingCode(props) {
  const { trackingCode } = useParams();
  const { refId } = useParams();
  const { key } = useParams();

  useEffect(() => {
    if (props.type === 4) { // شرط موردنظر
      const timer = setTimeout(() => {
        SentDataToZarinpal(key);

      },2000); // نیم ثانیه

      return () => clearTimeout(timer);
    }
  }, [props.type, key]);


  return (

    <div className="container my-5">
      <div className="row justify-content-center">
        <div className="col-md-8">
          <div className="card shadow-lg border-0 text-center p-4">
            {/* آیکون موفقیت */}
            <div className="mb-4">
              <i className="bi bi-check-circle-fill text-success" style={{ fontSize: "4rem" }}></i>
            </div>

            {/* پیام */}
            <h4 className="fw-bold text-success mb-3">
              سفارش شما با موفقیت ثبت شد 🎉
            </h4>
            {props.type == 4 &&
              (
                <h3 className="fw-bold text-primary mb-3">
                  در حال اتتقال به صفحه پرداخت .........
                </h3>
              )}
            <p className="fs-5">
              کد پیگیری سفارش :{" "}
              <span className="fw-bold text-primary">
                {trackingCode}
              </span>
            </p>
            {/* پیام موفق */}
            {props.type == 2 && (
              <p className="fs-5">
                کد پیگیری پرداخت:{" "}
                <span className="fw-bold text-primary">{refId}</span>
              </p>
            )}
            {/* پیام ناموفق */}
            {props.type == 3 && (
              <>
                <h4 className="fw-bold text-danger mb-3">پرداخت انجام نشد ❌</h4>
                <p className="fs-5">در صورت کسر مبلغ، طی نهایتاً ۷۲ ساعت برگشت داده می‌شود.</p>
              </>
            )}

            {/* دکمه‌ها */}
            <div className="d-flex justify-content-center gap-3 mt-4">
              <button className="btn btn-outline-primary" onClick={() => window.location.href = "/"} style={{ fontFamily: 'Vazirmatn' }} >
                بازگشت به صفحه اصلی
              </button>
              <button className="btn btn-success" onClick={() => window.location.href = "/orders"} style={{ fontFamily: 'Vazirmatn' }}>
                مشاهده سفارش‌ها
              </button>
            </div>
          </div>
        </div>
      </div>
    </div>
  );
};