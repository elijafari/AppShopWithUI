import React, { Component } from "react";
import { ProductItem } from "../page/ProductItem";
import { Pageing } from "../tools/Pageing";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "../../App.css";
import { Loading } from "../tools/Loading";
import { TextBox } from "../tools/TextBox";
import { DropdownApp } from "../tools/DropdownApp";
import { FaSearch } from "react-icons/fa";
import api from "../tools/axiosConfig";
import { Helmet } from "react-helmet";
export class Home extends Component {
  constructor(props) {
    super(props);

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
      categoryId: 0,
      showFilter:false,
    };
  }

  componentDidMount() {
    const params = new URLSearchParams(window.location.search);
    //const page = parseInt(params.get("page")) || 1;
    const page = 1;
    this.loadCategory();
    this.loadDate(page);
  }

  loadDate(pageNumber) {
    // ✅ تغییر آدرس مرورگر
    // const url = new URL(window.location);
    // url.searchParams.set("page", pageNumber);
    // window.history.pushState({}, "", url);


    this.setState({
      loading: false,
    });
    var filter = {
      fromPrice: this.getNumber(this.state.fromPrice),
      toPrice: this.getNumber(this.state.toPrice),
      productName:
        this.state.productName == undefined ? "" : this.state.productName,
      categoryId: this.state.categoryId,
    };
    api
      .post("/product/GetAll", { filter: filter, pageNumber: pageNumber, sort: this.state.sortId })
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

        {/* 🟢 فیلترها */}
        <div className="accordion mb-3" id="filterAccordion">
          <div className="accordion-item">
            <h2 className="accordion-header">
            <button
  className="accordion-button card-header"
  onClick={() => this.setState({ showFilter: !this.state.showFilter })}
>
جستجو کالا
</button>
   </h2>
<div className={`accordion-collapse collapse ${this.state.showFilter ? 'show' : ''}`}>
              <div className="accordion-body">
                <div className="row g-3">

                  <TextBox
                    context={this}
                    title="نام کالا"
                    name="productName"
                    className="col-md-6 col-sm-12"
                  />

                  <DropdownApp
                    context={this}
                    name="categoryId"
                    title="گروه کالا"
                    className="col-md-6 col-sm-12"
                    data={this.state.cat}
                  />

                  <TextBox
                    context={this}
                    title="از قیمت"
                    name="fromPrice"
                    className="col-md-6 col-sm-12"
                    isLeft={true}
                    separator={true}
                    maxLength={15}
                  />

                  <TextBox
                    context={this}
                    title="تا قیمت"
                    name="toPrice"
                    className="col-md-6 col-sm-12"
                    isLeft={true}
                    separator={true}
                    maxLength={15}
                  />

                  <DropdownApp
                    context={this}
                    name="sortId"
                    title="ترتیب نمایش"
                    className="col-md-6 col-sm-12"
                    data={this.state.sort}
                  />

                  {/* دکمه جستجو */}
                  <div className="col-md-6 col-sm-12 d-flex align-items-end">
                    <button
                      onClick={() => this.loadDate(this.state.currentPage)}
                      className="btn btn-success d-flex align-items-center gap-2"
                      style={{ fontFamily: 'Vazirmatn' }}
                    >
                      <FaSearch />
                      جستجو
                    </button>
                  </div>

                </div>
              </div>
            </div>
          </div>
        </div>
      {!this.state.loading ? (
        <Loading />
      ) : (
        <>
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
