import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.css";
import "../../App.css";
import { Helmet } from "react-helmet";
export class ProductItem extends Component {
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
            <>
                <style>
                    {`
      .product-card {
        border: 2px solid transparent;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
      }
      .product-card:hover {
        border-color: #ffc107; /* زرد */
        box-shadow: 0 0 15px rgba(255, 193, 7, 0.5);
      }
      .product-title {
        display: -webkit-box;
        -webkit-line-clamp: 2; /* حداکثر ۲ خط */
        -webkit-box-orient: vertical;
        overflow: hidden;
        text-overflow: ellipsis;
        min-height: 48px; /* برای هم‌تراز شدن همه کارت‌ها */
      }
    `}
                </style>


                <Helmet>
                    <meta name="description" content={`خرید ${product.name} با بهترین قیمت و کیفیت در فروشگاه آنلاین. ارسال سریع به سراسر کشور.`} />
                    <meta name="keywords" content={`خرید ${product.name}, قیمت ${product.name}, فروشگاه آنلاین , electroej, الکتروایجی, الکترو ایجی`} />
                    <meta name="title" content={`خرید ${product.name}, قیمت ${product.name}, فروشگاه آنلاین , electroej, الکتروایجی, الکترو ایجی`} />

                    {/* Schema Markup */}
                    <script type="application/ld+json">
                        {`
          {
            "@context": "https://schema.org",
            "@type": "Product",
            "name": "${product.name}",
            "image": "${import.meta.env.VITE_API_URL + product.pathImg}",
            "description": "${product.description}",
            "url": "${import.meta.env.VITE_API_URL}/productView/${product.slug}",
            "priceCurrency": "IRR",
            "price": "${product.price}",
            "offers": {
              "@type": "Offer",
              "priceCurrency": "IRR",
              "price": "${product.price}",
              "availability": "https://schema.org/InStock"
            },
            "review": {
              "@type": "Review",
              "reviewRating": {
                "@type": "Rating",
                "ratingValue": 4,
                "bestRating": 5
              },
              "author": {
                "@type": "Person",
                "name": "ehsan jafari"
              }
            },
            "aggregateRating": {
              "@type": "AggregateRating",
              "ratingValue": 4.4,
              "reviewCount": 89
            },
            "sku": "electroej",
            "brand": {
              "@type": "Brand",
              "name": "electroej"
            }
          }
          `}
                    </script>
                </Helmet>

                <div className="col-md-3 col-lg-3 col-sm-6 mb-4">
                    <div
                        className="card product-card h-100 d-flex flex-column justify-content-between text-center"
                        itemScope
                        itemType="https://schema.org/Product"
                    >
                        {/* تصویر */}
                        <img
                            src={import.meta.env.VITE_API_URL + product.pathImg}
                            alt={`خرید ${product.name} با بهترین قیمت`}
                            onClick={() => this.onView(this.props.data)}
                            className="card-img-top img-fluid"
                            style={{
                                height: "100%",
                                objectFit: "cover",
                                cursor: "pointer",
                                width: "100%",
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
                                    {product.price.toLocaleString()} تومان
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
                                        {this.state.count}
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
                                >
                                    اطلاعات بیشتر
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </>

      </>
    );
  }
}
