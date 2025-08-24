import React from "react";
export default class Header extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {

    return (
      <header className="bg-success text-white py-3 shadow-sm">
        <div className="container d-flex justify-content-between align-items-center">
          
   
          {/* عنوان فروشگاه */}
          <div className="text-center flex-grow-1">
            <h4 className="fw-bold mb-1">فروشگاه اینترنتی لوازم الکتریکی EjElectro</h4>
            <p className="mb-0 fs-6">خرید آسان و سریع انواع تجهیزات و قطعات برقی</p>
          </div>
        </div>
      </header>
    );
  }
}
