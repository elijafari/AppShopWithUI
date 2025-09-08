import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.css";
import "../../App.css";

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
    window.location.href = "/productView/" + e.id;
  }

  render() {
    debugger
    const product = this.props.data;
    return (
      <div className="col-md-3 col-lg-3 col-sm-6">
        <div className="text-center">
          <img
            src={import.meta.env.VITE_API_URL+product.pathImg}
            alt={`خرید ${product.name} با بهترین قیمت`}
            onClick={() => this.onView(this.props.data)}
            className="img-fluid img-thumbnail"
            style={{ cursor: "pointer", height: "350px", width: "350" }}
          />
          <br />
          <span>{product.name}</span>
          <br />
          {product.isActive == true ?
            <span>{product.price.toLocaleString()} تومان</span>
            :
            <span className="text-danger">ناموجود</span>
          }
          <br />
          {product.isActive && (
            <>

              <button
                type="button"
                className="btn btn-success"
                onClick={() => this.add()}
              >
                +
              </button>
              <label className="counterLabel" key={this.state.updateKey}>
                {this.state.count}
              </label>
              {this.state.count > 0 && (
                <button
                  type="button"
                  className="btn btn-success"
                  onClick={() => this.remove()}
                >
                  -
                </button>
              )}  </>)}
          <button
            type="button"
            className="btn btn-warning"
            onClick={() => this.onView(product)}
          >
            اطلاعات بیشتر
          </button>
        </div>
      </div>
    );
  }
}
