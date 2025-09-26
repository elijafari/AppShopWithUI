import React from "react";
   import { FaLightbulb } from "react-icons/fa";
import "../../App.css";
export default class Header extends React.Component {
  constructor(props) {
    super(props);
  }

  render() {

    return (

<header
  className="text-black py-3 shadow-sm"
  style={{
    backgroundColor: "#FFD700", // رنگ طلایی
    fontFamily: "Vazirmatn",
  }}
>
  <div className="container d-flex justify-content-between align-items-center">
    <div className="text-center flex-grow-1 d-flex flex-column align-items-center">
      <h4 className="mb-1 fw-bold d-flex align-items-center gap-2 animate__animated animate__fadeInDown">
        <FaLightbulb   style={{ 
    color: "#fbff00ff", 
    fontSize: "1.8rem", 
    filter: "drop-shadow(0 0 6px #eeff00ff)" 
  }}  />
        فروشگاه اینترنتی الکتروایجی
          </h4>
      <p className="mb-0 fs-6 animate__animated animate__fadeInUp">
        خرید آنلاین لوازم الکتریکی| خرید آسان و سریع انواع تجهیزات و قطعات برقی و روشنایی
      </p>
    </div>
  </div>
</header>

    );
  }
}
