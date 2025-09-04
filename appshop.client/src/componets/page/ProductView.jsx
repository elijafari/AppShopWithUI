import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import  api  from "../tools/axiosConfig";

export class ProductView extends Component {
  constructor(props) {
    super(props);
    this.state = {
      id: window.location.href.split("/")[4],
      file: null,
      updateKeyImage: 1,
      updateKey: 1,
    };
  }
  componentDidMount() {
    api.get("api/product/GetById?id=" + this.state.id).then((response) => {
      this.setState({
        data:response.data.data,
        code: response.data.data.code,
        name: response.data.data.name,
        price: response.data.data.price,
        description: response.data.data.description,
        file: "data:image/png;base64," + response.data.data.image,
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
      array.push({ id:  this.state.id, count:1, data: this.state.data });
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
          <h5 className="card-header">{this.state.name}</h5>
          <div className="card-body">
            <div className="row">
              <div className="col-md-9">
                <b>قیمت : </b>
                <span>{this.state.price}</span>
                <br />
              <b>توضیحات کالا : </b>
                <span>{this.state.description}</span>
              </div>
              <div className="col-md-3">
                <img
                  src={this.state.file}
                  width={200}
                  height={200}
                  className="img-fluid img-thumbnail"
                />
              </div>
            </div>
          </div>
        </div>
          <button onClick={() => this.shopItem()} className="btn btn-success">
          افزودن به سبد خرید
            </button>
      </>
    );
  }
}
