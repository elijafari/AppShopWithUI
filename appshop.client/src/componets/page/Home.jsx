import React, { Component } from "react";
import { ProductItem } from "../page/ProductItem";
import { Pageing } from "../tools/Pageing";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";

import { Loading } from "../tools/Loading";
import { TextBox } from "../tools/TextBox";
import { DropdownApp } from "../tools/DropdownApp";
import { FaSearch } from "react-icons/fa";
import api from "../tools/axiosConfig";
import { Helmet } from "react-helmet";
import { ProductTorop } from "./ProductTorop";
export class Home extends Component {
  constructor(props) {
    super(props);
    debugger
    this.state = {
      data: [],
      cat: [],
      sort: [
        { title: "ارزانترین", value: 1 },
        { title: "گرانترین", value: 2 }
      ],
      updateKey: 1,
      loading: false,
      pageCount: 0,
      currentPage: 1,
      totalCount: 0,
      fromPrice: "",
      toPrice: "",
      productName: "",
      showFilter: false,
    };
  }

  componentDidMount() {
    const params = new URLSearchParams(window.location.search);
    //const page = parseInt(params.get("page")) || 1;
    const page = 1;
    this.loadCategory();
    this.loadDate(page);
  }

  loadDate(pageNumber, categoryId) {
    this.setState({
      loading: false,
    });
    var filter = {
      fromPrice: 0,
      toPrice: 0,
      productName: this.state.productName,
      categoryId: categoryId
    };
    api
      .post("/product/GetAll", { filter: filter, pageNumber: pageNumber, sort: 0 })
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
    if (!text) return 0;
    return parseInt(text.replaceAll(",", ""));
  }
  toggleMenu = () => {
    this.setState({ isOpen: !this.state.isOpen });
  };
  render() {
    const { currentPage, pageCount, totalCount, data } = this.state;

    // 🟢 لینک‌های SEO
    const baseUrl = import.meta.env.VITE_API_URL + "/products"; // آدرس دامنه خودت
    const canonicalUrl =
      currentPage > 1 ? `${baseUrl}?page=${currentPage}` : baseUrl;
    const prevUrl =
      currentPage > 1 ? `${baseUrl}?page=${currentPage - 1}` : null;
    const nextUrl =
      currentPage < pageCount ? `${baseUrl}?page=${currentPage + 1}` : null;

    return (
      <>
        {/* 🟢 Helmet برای SEO */}
        <Helmet>
          <title>
            {currentPage > 1
              ? `محصولات صفحه ${currentPage} | فروشگاه آنلاین لوازم الکتریکی`
              : "فروشگاه آنلاین لوازم الکتریکی"}
          </title>
          <meta
            name="description"
            content={
              currentPage > 1
                ? `لیست محصولات فروشگاه آنلاین لوازم الکتریکی - صفحه ${currentPage}`
                : "فروشگاه آنلاین لوازم الکتریکی با بهترین قیمت‌ها و ارسال سریع به سراسر کشور."
            }
          />
          <meta
            name="keywords"
            content="فروشگاه لوازم الکتریکی, خرید لوازم, قیمت لوازم, خرید آنلاین"
          />

          {/* Canonical */}
          <link rel="canonical" href={canonicalUrl} />

          {/* Prev / Next */}
          {prevUrl && <link rel="prev" href={prevUrl} />}
          {nextUrl && <link rel="next" href={nextUrl} />}
        </Helmet>
      <div
  className="shadow-sm rounded-3 p-3 mb-3 bg-white"
  style={{ fontFamily: "Vazirmatn" }}
>
  <div className="row align-items-center gy-3">

    {/* جستجو */}
    <div className="col-lg-5 col-md-12">

      <div
        className="input-group"
        style={{
          borderRadius: "30px",
          overflow: "hidden",
          boxShadow: "0 2px 8px rgba(0,0,0,.08)"
        }}
      >

        <input
          type="text"
          className="form-control border-0"
          placeholder="نام کالا را جستجو کنید..."
          value={this.state.productName}
          onChange={(e) =>
            this.setState({
              productName: e.target.value
            })
          }
          onKeyDown={(e) => {
            if (e.key === "Enter") {
              this.setState({ categoryId: 0 }, () => {
                this.loadDate(1, 0);
              });
            }
          }}
        />

        <button
          className="btn btn-warning px-4"
          onClick={() => {
            this.setState({ categoryId: 0 }, () => {
              this.loadDate(1, 0);
            });
          }}
        >
          <FaSearch />
        </button>

      </div>

    </div>

    {/* دسته بندی ها */}
    <div className="col-lg-7 col-md-12">

      <div
        className="d-flex flex-nowrap"
        style={{
          overflowX: "auto",
          scrollbarWidth: "none",
          whiteSpace: "nowrap"
        }}
      >

        {/* دسته بندی ها */}

        {this.state.cat.map((x) => (

          <button
            key={x.value}
            className={
              this.state.categoryId === x.value
                ? "btn btn-warning rounded-pill me-2 mb-2"
                : "btn btn-outline-warning rounded-pill me-2 mb-2"
            }
            onClick={() => {
              this.setState(
                {
                  categoryId: x.value
                },
                () => this.loadDate(1, x.value)
              );
            }}
          >
            {x.title}
          </button>

        ))}

      </div>

    </div>

  </div>

</div>
        {!this.state.loading ? (
          <Loading />
        ) : (
          <>
            <div>
              {data.map((x) => (
                <ProductTorop
                  data={x}
                  key={x.id}
                />
              ))}
            </div>
            <div className="row" key={this.state.updateKey}>
              {data.map((x) => (
                <ProductItem
                  data={x}
                  key={x.id}
                  shopItem={(e1, e2) => this.shopItem(e1, e2)}
                />
              ))}
            </div>
            <br />
            {/* <Pageing
              updateKey={this.state.updateKey}
              currentPage={currentPage}
              pageCount={pageCount}
              totalCount={totalCount}
              onChangePage={(e) => this.loadDate(e)}
            /> */}
          </>
        )
        }
      </>
    );
  }
}
