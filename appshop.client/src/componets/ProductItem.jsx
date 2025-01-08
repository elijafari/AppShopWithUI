import React, { Component } from "react";
import "../../node_modules/bootstrap/dist/css/bootstrap.css";
import "../App.css";
import { ChangeRoute } from "./ChangeRoute";

export class ProductItem extends Component {
  constructor(props) {
    super(props);
    this.state = {
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
    ChangeRoute("/productView/" + e.id);
  }

  render() {
    return (
      <div className="col-md-3 col-lg-3 col-sm-6">
        <div className="text-center">
          <img
            src={"data:image/png;base64," + this.props.data.image}
            onClick={() => this.onView(this.props.data)}
            className="img-fluid img-thumbnail"
            alt={this.props.data.name}
            style={{cursor:"pointer"}}
          />
          <h4>{this.props.data.name}</h4>
          <h5>{this.props.data.price.toLocaleString()} تومان</h5>
          <button
            type="button"
            className="btn btn-success"
            on
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
          )}
          <button
            type="button"
            className="btn btn-info"
            onClick={() => this.onView(this.props.data)}
          >
            اطلاعات بیشتر
          </button>
        </div>
      </div>
    );
  }
}
