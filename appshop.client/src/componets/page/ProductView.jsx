import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import api from "../tools/axiosConfig";
import { ButtonReturn } from "../tools/ButtonReturn";
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
