import React from 'react';
import ReactDOM from 'react-dom/client';
import './index.css';
import App from './App';
//import reportWebVitals from './reportWebVitals';

const root = ReactDOM.createRoot(document.getElementById('root'));
root.render(

    // <React.StrictMode>
    <>
        <div dir="rtl" className='pageMain'>
            <App />
            
    
        <footer className="footer bg-dark pt-2 pb-2">
            <div>
                    <ul>
                        <li style={{ color: 'white' }}>تماس با ما</li>
                        <li style={{ color: 'white' }}>درباره با ما</li>
                        {/*<li class="mb-2"><a href="/docs/5.3/">Docs</a></li>*/}
                        {/*<li class="mb-2"><a href="/docs/5.3/examples/">Examples</a></li>*/}
                    </ul>
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
