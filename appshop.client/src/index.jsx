
import ReactDOM from 'react-dom/client';
import App from './App';
import { Header } from './componets/tools/Header';
import "../node_modules/bootstrap/dist/css/bootstrap.min.css";
import zarinpalLogo from "./image/zarinpal-logo.JPEG";
import enamadLogo from "./image/enamad.png";

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
  <div style={{ margin: "5px" }}>
    <div dir="rtl" className="container d-flex flex-column min-vh-100 bg-light">
      {/* هدر */}
      <Header />

      {/* محتوای اصلی */}
      <main className="flex-grow-1">
        <App />
      </main>

      {/* فوتر */}
      <footer
        className="bg-dark text-white pt-4 pb-4 mt-5 fontApp"
        style={{ borderRadius: "10px" }}
      >
        <div className="container">

          {/* امکانات فروشگاه */}
          <div className="row text-center border-bottom border-secondary pb-4 mb-4">

            <div className="col-6 col-lg-3 mb-3 mb-lg-0">
              <i className="bi bi-truck fs-2 text-white-50"></i>
              <h6 className="mt-2 mb-1">ارسال سریع</h6>
              <small className="text-white-50">تحویل در کوتاه‌ترین زمان</small>
            </div>

            <div className="col-6 col-lg-3 mb-3 mb-lg-0">
              <i className="bi bi-shield-check fs-2 text-white-50"></i>
              <h6 className="mt-2 mb-1">اصالت کالا</h6>
              <small className="text-white-50">تضمین اصالت محصولات</small>
            </div>

            <div className="col-6 col-lg-3">
              <i className="bi bi-cash-coin fs-2 text-white-50"></i>
              <h6 className="mt-2 mb-1">تضمین قیمت</h6>
              <small className="text-white-50">بهترین قیمت بازار</small>
            </div>

            <div className="col-6 col-lg-3">
              <i className="bi bi-globe2 fs-2 text-white-50"></i>
              <h6 className="mt-2 mb-1">ارسال سراسری</h6>
              <small className="text-white-50">ارسال به سراسر کشور</small>
            </div>

          </div>

          {/* لینک ها و نمادها */}
          <div className="row align-items-center">

            <div className="col-lg-9 mb-4 mb-lg-0">
              <h5 className="fw-bold mb-3">لینک‌های سریع</h5>

              <ul className="nav flex-column">
                <li className="nav-item">
                  <a className="nav-link text-white-50 px-0" href="/home">
                    صفحه اصلی
                  </a>
                </li>

                <li className="nav-item">
                  <a className="nav-link text-white-50 px-0" href="/contactUs">
                    تماس با ما
                  </a>
                </li>

                <li className="nav-item">
                  <a className="nav-link text-white-50 px-0" href="/aboutUs">
                    درباره ما
                  </a>
                </li>
              </ul>
            </div>

            <div className="col-6 col-lg-1 text-center">
              <a
                href="https://www.zarinpal.com"
                target="_blank"
                rel="noreferrer"
                className="tooltip-app"
                data-tooltip="پرداخت امن با زرین‌پال"
              >
                <img
                  src={zarinpalLogo}
                  style={{ width: "78px" }}
                />
              </a>
            </div>

            <div className="col-6 col-lg-2 text-center">
              <a
                referrerPolicy="origin"
                target="_blank"
                rel="noreferrer"
                href="https://trustseal.enamad.ir/?id=678704&Code=Uuq1o2XT9IMXG2cIdfMMbMr2cIA8pBEr"
                className="tooltip-app"
                data-tooltip="نماد تجارت الکترونیکی"
              >
                <img
                  src={enamadLogo}
                  style={{
                    width: "78px",
                    height: "78px",
                    cursor: "pointer",
                  }}
                />
              </a>
            </div>

          </div>

          <hr className="border-secondary my-4" />

          <div className="text-center text-white-50">
            © {new Date().getFullYear()} ElectroEJ - تمامی حقوق محفوظ است.
          </div>

        </div>
      </footer>
    </div>
  </div>
);