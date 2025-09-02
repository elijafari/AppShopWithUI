
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
import Header from './componets/tools/Header';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(
<div dir="rtl" className="d-flex flex-column min-vh-100 bg-light">
  {/* هدر */}
 <Header />

  {/* محتوای اصلی */}
  <main className="flex-grow-1">
    <App />
  </main>

  {/* فوتر */}
  <footer className="bg-dark text-white pt-5 pb-4 mt-5">
    <div className="container">
      <div className="row">

        {/* لینک‌ها */}
        <div className="col-md-4 mb-4 mb-md-0">
          <h5 className="fw-bold mb-3">لینک‌های سریع</h5>
          <ul className="nav flex-column">
            <li className="nav-item mb-2">
              <a className="nav-link text-white-50 px-0" href="/contactUs">تماس با ما</a>
            </li>
            <li className="nav-item mb-2">
              <a className="nav-link text-white-50 px-0" href="/aboutUs">درباره ما</a>
            </li>
          </ul>
        </div>

        {/* کپی‌رایت */}
        <div className="col-md-4 text-center text-md-end">
          <h5 className="fw-bold mb-3">ElectroEj</h5>
          <p className="text-white-50 small mb-0">
            &copy; 2025 فروشگاه اینترنتی لوازم الکتریکی. تمام حقوق محفوظ است.
          </p>
        </div>
      </div>
    </div>
  </footer>
</div>

);