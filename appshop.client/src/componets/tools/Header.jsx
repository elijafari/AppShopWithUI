import React from "react";
import "../../App.css";
export default class Header extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {

    return (
      <header className=" text-black py-3 shadow-sm font-size" style={{ backgroundColor: "#ecf019ff" }}>
        
        <div className="container d-flex justify-content-between align-items-center">
          
   
          {/* عنوان فروشگاه */}
          <div className="text-center flex-grow-1">
            <h5 className=" mb-1">فروشگاه اینترنتی لوازم الکتریکی الکترو ایجی</h5>
            <p className="mb-0 fs-6">خرید آسان و سریع انواع تجهیزات و قطعات برقی و روشنایی</p>
          </div>
        </div>
      </header>
    );
  }
}
