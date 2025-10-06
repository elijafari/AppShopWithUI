import React from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import api from "../tools/axiosConfig";
import { ButtonReturn } from "../tools/ButtonReturn";
import { ProductSeo } from "./ProductSeo";
export class ProductView extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      slug: window.location.href.split("/")[4],
      file: null,
      filePreviews:[],
      updateKeyImage: 1,
      updateKey: 1,
      currentIndex:0,
      keywords: "خرید/لوازم الکتریکی/فروشگاه آنلاین/electroej/ الکتروایجی/الکترو ایجی",
    };
  }
  componentDidMount() {
    api.post("/product/GetBySlug", { slug: this.state.slug }).then((response) => {
      var result = response.data.data;
      this.setState({
        ...result,
        keywords: this.state.keywords + "/" +result.categoryName + "/" + result.name.split(" ")[0]+"/" + result.name,
        persionPrice: result.price.toLocaleString("fa-IR"),
        file: import.meta.env.VITE_API_URL + result.pathImg,
        filePreviews: result.pathImags.map((x) => import.meta.env.VITE_API_URL + x),
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


        <ProductSeo name={this.state.name}
          description={this.state.description}
          price={this.state.price}
          pathImg={this.state.pathImg}
          slug={this.state.slug} />


        <div className="card">
          <h1 className="card-header title-header">{this.state.name}</h1>
         

        <div className="card-body">
          <div className="row">
            <div className="col-md-9">
              <div className="row mb-3">
                <span className="fw-bold text-success fs-2">
                  {this.state.persionPrice} <small>تومان</small>
                </span>
              </div>
              <div className="row mb-3">
                <b>توضیحات کالا : </b>
                <span>{this.state.description}</span>
              </div>
            </div>
         <div className="col-md-3 d-flex flex-column align-items-center justify-content-center position-relative p-3">
{this.state.filePreviews.length > 1 && (
  <button
    className="btn btn-outline-secondary position-absolute shadow-sm rounded-circle"
    style={{ left: "22px", top: "50%", transform: "translateY(-50%)" }}
    onClick={() =>
      this.setState((prev) => ({
        currentIndex:
          prev.currentIndex > 0
            ? prev.currentIndex - 1
            : this.state.filePreviews.length - 1
      
    }))
  }>
    <i className="bi bi-chevron-right fs-4"></i>
  </button>  

)}
  {/* عکس فعلی */}
  <img
    src={this.state.filePreviews[this.state.currentIndex]}
    className="img-fluid img-thumbnail shadow-lg rounded-3"
    style={{
      width: "350px",
      height: "350px",
      objectFit: "cover",
      border: "3px solid #eee",
    }}
    alt={this.state.name}
  />
{this.state.filePreviews.length > 1&& (
  <button
    className="btn btn-outline-secondary position-absolute shadow-sm rounded-circle"
    style={{ right: "22px", top: "50%", transform: "translateY(-50%)" }}
    onClick={() =>
      this.setState((prev) => ({
        currentIndex:
          prev.currentIndex < this.state.filePreviews.length - 1
            ? prev.currentIndex + 1
            : 0,
      }))
    }  >
    <i className="bi bi-chevron-left fs-4"></i>
  </button>
)}

  {/* اندیـکاتور پایین عکس */}
  <div className="mt-3">
    <span className="badge bg-secondary">
      {this.state.currentIndex + 1} از {this.state.filePreviews.length}
    </span>
  </div>
</div>

          </div>
          {this.state.isActive ? (
            <button onClick={() => this.shopItem()} className="btn btn-success">
              افزودن به سبد خرید
            </button>
          ) : (
            <span className="text-danger">ناموجود</span>
          )}
          <ButtonReturn />
        </div>
      </div >

         <div className="mt-3">
          {this.state.keywords?.split("/").map((kw, i) => (
            <h2 key={i} className="keyword-tag">
              {kw.trim()}
            </h2>
          ))}
        </div>
      </>
    );
  }
}
