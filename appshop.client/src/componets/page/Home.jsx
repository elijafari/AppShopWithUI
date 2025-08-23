import React, { Component } from "react";
import { ProductItem } from "../page/ProductItem";
import { Pageing } from "../tools/Pageing";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "../../App.css";
import { Loading } from "../tools/Loading";
import { TextBox } from "../tools/TextBox";
import { DropdownApp } from "../tools/DropdownApp";
import api from "../tools/axiosConfig";

export class Home extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: [],
      cat: [],
      updateKey: 1,
      loading: false,
      pageCount: 0,
      currentPage: 1,
      fromPrice: "",
      toPrice: "",
      productName: "",
      categoryId: 0
    };
  }

  componentDidMount() {
    this.loadCategory();
    this.loadDate(this.state.currentPage);
  }
  loadDate(pageNumber) {
    this.setState({
      loading: false,
    });
    var filter = {
      fromPrice: this.getNumber(this.state.fromPrice),
      toPrice: this.getNumber(this.state.toPrice),
      productName: this.state.productName == undefined ? "" : this.state.productName,
      categoryId: this.state.categoryId,
    };
    api
      .post("/product/GetAll", { filter: filter, pageNumber: pageNumber })
      .then((response) => {
        this.setState({
          data: response.data.data.data,
          pageCount: response.data.data.pageCount,
          totalCount: response.data.data.totalCount,
          currentPage: pageNumber,
          loading: true,
          updateKey: this.state.updateKey + 1,
        });
      });
  }
  loadCategory() {
    api.get("category/GetAllForSearch").then((response) => {
      var cat = [];
      response.data.data.forEach((element) => {
        cat.push({ title: element.name, value: element.id });
      });
      this.setState({ cat });
    });
  }
  shopItem(e, count) {
    let array = JSON.parse(localStorage.getItem("selectedItem"));
    if (array === null) array = [];
    var index = array.findIndex((x) => x.id === e.id);
    if (index > -1) {
      array[index].count = count;
    } else {
      array.push({ id: e.id, count: count, data: e });
    }
    this.setState({
      selectedData: array,
    });
    localStorage.setItem("selectedItem", JSON.stringify(array));
  }
  getNumber(text) {
    if (text == undefined)
      return 0;
    if (text == null)
      return 0;
    if (text == "")
      return 0;

    return parseInt(text.replaceAll(",", ""));
  }
  render() {
    return (
      <>


        <div className="card">
          <h5 className="card-header">
            فیلتر ها
          </h5>
          <div className="card-body">

            <div className="row">
              <TextBox
                context={this}
                title="نام کالا"
                name="productName"
                className="col-md-3 col-sm-12"
              />
              <DropdownApp
                context={this}
                name="categoryId"
                title="گروه کالا"
                className="col-md-3 col-sm-12"
                data={this.state.cat}
              />
              <TextBox
                context={this}
                title="از قیمت"
                name="fromPrice"
                className="col-md-3 col-sm-12"
                isLeft={true}
                separator={true}
              />
              <TextBox
                context={this}
                title="تا قیمت"
                name="toPrice"
                className="col-md-3 col-sm-12"
                isLeft={true}
                separator={true}
              />
            </div>
            <button onClick={() => this.loadDate(this.state.currentPage)} className="btn btn-success">
              جستجو
            </button>
          </div>
        </div>
        {!this.state.loading ? (
          <Loading />
        ) : (<>
          <div className="row" key={this.state.updateKey}>
            {this.state.data.map((x) => (
              <ProductItem
                data={x}
                key={x.id}
                shopItem={(e1, e2) => this.shopItem(e1, e2)}
              />
            ))}
          </div>
          <br />

          <Pageing
            updateKey={this.state.updateKey}
            currentPage={this.state.currentPage}
            pageCount={this.state.pageCount}
            totalCount={this.state.totalCount}
            onChangePage={(e) => this.loadDate(e)}
          />
        </>
        )}
      </>
    );
  }
}
