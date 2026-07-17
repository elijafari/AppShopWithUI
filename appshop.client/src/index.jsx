
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

      {/* محتوای اصلی */}
      <main className="flex-grow-1">
        <App />
      </main>

      {/* فوتر */}
      <footer
        className="bg-dark text-white mt-5 py-3 fontApp"
        style={{ borderRadius: "10px" }}
      >
        <div className="container">

          {/* ردیف امکانات */}
          <div
            className="d-flex justify-content-center align-items-center flex-wrap gap-4 pb-3 border-bottom border-secondary"
          >

            <div className="d-flex align-items-center gap-2">
              <i className="bi bi-truck fs-4 text-warning"></i>
              <span>ارسال سریع</span>
            </div>

            <div className="d-flex align-items-center gap-2">
              <i className="bi bi-shield-check fs-4 text-warning"></i>
              <span>اصالت کالا</span>
            </div>

            <div className="d-flex align-items-center gap-2">
              <i className="bi bi-cash-coin fs-4 text-warning"></i>
              <span>تضمین قیمت</span>
            </div>

            <div className="d-flex align-items-center gap-2">
              <i className="bi bi-globe2 fs-4 text-warning"></i>
              <span>ارسال سراسری</span>
            </div>

            {/* زرین پال */}

            <a
              href="https://www.zarinpal.com"
              target="_blank"
              rel="noreferrer"
              className="tooltip-app"
              data-tooltip="پرداخت امن با زرین‌پال"
            >
              <img
                src={zarinpalLogo}
                alt="زرین پال"
                style={{
                  width: "55px",
                  height: "55px",
                  objectFit: "contain",
                }}
              />
            </a>

            {/* اینماد */}

              {/* <a referrerpolicy='origin'
                target='_blank'
                href='https://trustseal.enamad.ir/?id=678704&Code=Uuq1o2XT9IMXG2cIdfMMbMr2cIA8pBEr'>
                <img referrerpolicy='origin'
                  src='https://trustseal.enamad.ir/logo.aspx?id=678704&Code=Uuq1o2XT9IMXG2cIdfMMbMr2cIA8pBEr'
                  alt='********'  code='Uuq1o2XT9IMXG2cIdfMMbMr2cIA8pBEr' />
              </a> */}
            <a
              referrerPolicy="origin"
              target="_blank"
              href="https://trustseal.enamad.ir/?id=678704&Code=Uuq1o2XT9IMXG2cIdfMMbMr2cIA8pBEr"
              className="tooltip-app"
              data-tooltip="نماد تجارت الکترونیکی"
            >
              <img
                src={enamadLogo}
                alt="اینماد"
                style={{
                  width: "55px",
                  height: "55px",
                  objectFit: "contain",
                }}
              />
            </a>

          </div>

          {/* کپی رایت */}

          <div className="text-center mt-3 text-white-50">

            © {new Date().getFullYear()} <strong>ElectroEJ</strong>

            <br />

            تمامی حقوق این وب‌سایت محفوظ است.

          </div>

        </div>
      </footer>
    </div>
  </div>
);