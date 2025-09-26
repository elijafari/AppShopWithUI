import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import api from "../tools/axiosConfig";
import { ButtonReturn } from "../tools/ButtonReturn";
import { Helmet } from "react-helmet";
export class ProductView extends Component {
  constructor(props) {
    super(props);
    this.state = {
      slug: window.location.href.split("/")[4],
      file: null,
      updateKeyImage: 1,
      updateKey: 1,
    };
  }
  componentDidMount() {
    api.post("/product/GetBySlug", { slug: this.state.slug }).then((response) => {
      var result = response.data.data;
      this.setState({
        ...result,
        price: result.price.toLocaleString("fa-IR"),
        file: import.meta.env.VITE_API_URL + result.pathImg,
        updateKey: this.state.updateKey + 1,
      });
    });
  }
  shopItem() {
    let array = JSON.parse(localStorage.getItem("selectedItem"));
    if (array === null) array = [];
    var index = array.findIndex((x) => x.id === this.state.id);
    if (index > -1) {
      array[index].count += 1;
    } else {
      array.push({ id: this.state.id, count: 1, data: this.state });
    }
    this.setState({
      selectedData: array,
    });
    localStorage.setItem("selectedItem", JSON.stringify(array));
  }
  render() {
    return (
      <>
        {/* اضافه کردن تگ meta description با react-helmet */}
        <Helmet>
          <meta name="description" content={`خرید ${this.state.name} با بهترین قیمت و کیفیت در فروشگاه آنلاین. ارسال سریع به سراسر کشور.`} />
          <meta name="keywords" content={`خرید ${this.state.name}, قیمت ${this.state.name}, فروشگاه آنلاین , electroej, الکتروایجی, الکترو ایجی`} />
          <meta name="title" content={`خرید ${this.state.name}, قیمت ${this.state.name}, فروشگاه آنلاین , electroej, الکتروایجی, الکترو ایجی`} />

          {/* Schema Markup */}
          <script type="application/ld+json">
            {`
      {
        "@context": "https://schema.org",
        "@type": "Product",
        "name": "${this.state.name}",
        "image": "${import.meta.env.VITE_API_URL + this.state.pathImg}",
        "description": "${this.state.description}",
        "url": "${import.meta.env.VITE_API_URL}/productView/${this.state.slug}",
        "priceCurrency": "IRR",
        "price": "${this.state.price}",
        "availability": "https://schema.org/InStock",
        "sku": "electroej",
        "brand": {
          "@type": "Brand",
          "name": "برند electroej"
        }
      }
    `}
          </script>
        </Helmet>
        <div className="card">
          <p className="card-header">{this.state.name}</p>
          <div className="card-body">
            <div className="row">
              <div className="col-md-9">
                <div className="row mb-3">
                  <span className="fw-bold text-success fs-2">
                    {this.state.price} <small>تومان</small>
                  </span>
                </div>
                <div className="row mb-3">

                  <b>توضیحات کالا : </b>
                  <span>{this.state.description}</span>
                </div>
              </div>
              <div className="col-md-3 d-flex justify-content-center align-items-center">
                <img
                  src={this.state.file}
                  className="img-fluid img-thumbnail w-400"
                />
              </div>
            </div>
            {this.state.isActive == true ?
              <button onClick={() => this.shopItem()} className="btn btn-success">
                افزودن به سبد خرید
              </button>
              :
              <span className="text-danger">ناموجود</span>
            }
            <ButtonReturn />
          </div>
        </div>

      </>
    );
  }
}
