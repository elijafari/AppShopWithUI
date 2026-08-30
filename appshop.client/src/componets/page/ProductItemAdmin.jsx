import React from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.css";

export class ProductItemAdmin extends React.Component {
  constructor(props) {
    super(props);
    this.state = {      
      baseURL: import.meta.env.VITE_API_URL,
      count: 0,
      uploadKey: 1,
    };
  }
  onEdit(e) {
    window.location.href = "/productFromHome/" + e.id;
  }
  render() {
    const product = this.props.data;
    return (
      <>
        <div className="col-md-3 col-lg-3 col-sm-6 mb-4">
          <div
            className="card product-card h-100 d-flex flex-column justify-content-between text-center">
            {/* تصویر */}
            <img
              src={import.meta.env.VITE_API_URL + product.pathImg}
              alt={product.name+ " کد  "+product.code}
              onClick={() => this.onView(this.props.data)}
              className="card-img-top img-fluid mx-auto"
              style={{
                height: "300px",
                objectFit: "cover",
                cursor: "pointer",
                width: "300px",
              }}
              itemProp="image"
            />

            {/* بدنه کارت */}
            <div className="card-body d-flex flex-column justify-content-between">
              {/* نام محصول */}
              <h6 className="card-title fw-bold product-title" itemProp="name">
                {product.name}
              </h6>

              {/* نمایش وضعیت محصول (قیمت یا ناموجود) */}
              {product.isActive ? (
                <p className="text-success fw-semibold mb-2" itemProp="priceCurrency">
                  {product.price.toLocaleString('fa-IR')} تومان
                </p>
              ) : (
                <p className="text-danger fw-semibold mb-2">ناموجود</p>
              )}
              <div className="mt-auto">
                <button
                  type="button"
                  className="btn btn-warning w-100 fw-semibold"
                  onClick={() => this.onEdit(product)}
                     style={{fontFamily:'Vazirmatn'}}
                >
                 ویرایش
                 </button>
              </div>


            </div>
          </div>
        </div>

      </>
    );
  }
}
