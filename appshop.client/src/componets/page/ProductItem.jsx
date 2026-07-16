import React from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.css";

import {ProductSeo} from "./ProductSeo";
import { ProductTorop } from "./ProductTorop";
export class ProductItem extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      
      baseURL: import.meta.env.VITE_API_URL,
      count: 0,
      uploadKey: 1,
    };
  }

  add() {
    let newCount = this.state.count + 1;
    this.props.shopItem(this.props.data, newCount);
    this.setState({
      count: newCount,
      updateKey: this.state.updateKey + 1,
    });
  }

  remove() {
    if (this.state.count > 0) {
      let newCount = this.state.count - 1;
      this.props.shopItem(this.props.data, newCount);
      this.setState({
        count: newCount,
        updateKey: this.state.updateKey + 1,
      });
    }
  }

  onView(e) {
    window.location.href = "/productView/" + e.slug;
  }

  render() {
    const product = this.props.data;
    return (
      <>


<ProductSeo name={product.name} 
description={product.description} 
price={product.price} 
pathImg={product.pathImg} 
slug={product.slug}
id={product.id}
isActive={product.isActive} />


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

              {/* دکمه‌های خرید */}
              {product.isActive && (
                <div className="d-flex justify-content-center align-items-center gap-2 mb-3">
                  <button
                    type="button"
                    className="btn btn-success btn-sm"
                    onClick={() => this.add()}
                  >
                    +
                  </button>
                  <label className="fw-bold" key={this.state.updateKey}>
                    {this.state.count.toLocaleString('fa-IR')}
                  </label>
                  {this.state.count > 0 && (
                    <button
                      type="button"
                      className="btn btn-danger btn-sm"
                      onClick={() => this.remove()}
                    >
                      -
                    </button>
                  )}
                </div>
              )}

              {/* دکمه اطلاعات بیشتر (همیشه پایین کارت) */}
              <div className="mt-auto">
                <button
                  type="button"
                  className="btn btn-warning w-100 fw-semibold"
                  onClick={() => this.onView(product)}
                     style={{fontFamily:'Vazirmatn'}}
                >
                  اطلاعات بیشتر
                </button>
              </div>
            </div>
          </div>
        </div>

      </>
    );
  }
}
