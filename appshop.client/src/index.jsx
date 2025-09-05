import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
//import reportWebVitals from './reportWebVitals';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(

    // <React.StrictMode>
    <>
        <div dir="rtl" className='pageMain pt-4 pb-3' style={{ backgroundColor: "#cae7ca" }}>
            <a className="navbar-brand fw-bold" href="#">
                <br />
                <h3>فروشگاه اینترنتی لوازم الکتریکی EjElectro</h3>
                <br />
                <h5> خرید آسان و سریع انواع تجهیزات و قطعات برقی</h5>
            </a>
            <App />
            <footer className="bg-dark text-white pt-4 pb-3">
                <div className="container">
                    <div className="row">
                        {/* لینک‌ها زیر هم */}
                        <div className="col-md-6 mb-3 mb-md-0">
                            <ul className="nav flex-column">
                                <li className="nav-item mb-1">
                                    <a className="nav-link text-white px-0" href="/contactUs">تماس با ما</a>
                                </li>
                                <li className="nav-item">
                                    <a className="nav-link text-white px-0" href="/aboutUs">درباره ما</a>
                                </li>
                                <li className="nav-item">
                                    {/* کپی‌رایت */}
                                    <div className="col-md-6 text-md-end text-center text-white">
                                        &copy; 2025 فروشگاه شما. تمام حقوق محفوظ است.
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
            </footer>

        </div>
    </>
    //</React.StrictMode>
);

// If you want to start measuring performance in your app, pass a function
// to log results (for example: reportWebVitals(console.log))
// or send to an analytics endpoint. Learn more: https://bit.ly/CRA-vitals
//reportWebVitals();
