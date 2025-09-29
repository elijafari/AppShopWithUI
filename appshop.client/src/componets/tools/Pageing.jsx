import React from "react";
import "bootstrap/dist/css/bootstrap.rtl.min.css";
import "../../App.css";

export  class Pageing extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      updateKey: 1,
      current: this.props.currentPage,
    };
    this.pageCount = [];
  }

  componentDidMount() {
    this.pageCount = [];
    for (let index = 0; index < this.props.pageCount; index++) {
      this.pageCount.push(index + 1);
    }
    this.setState({
      updateKey: this.state.updateKey + 1,
    });
  }

  onChangePage = (page) => {
    this.props.onChangePage(page);
  };

  render() {
    return (
      <div
        className="row borderPaging"
        key={this.props.updateKey + this.state.updateKey}
      >
        <div className="col-md-10">
          <nav aria-label="صفحه‌بندی محصولات">
            <ul className="pagination">
              {this.pageCount.map((x) =>
                x <= 10 ? (
                  <li
                    style={{ cursor: "pointer" }}
                    className={
                      x === this.props.currentPage
                        ? "page-item active"
                        : "page-item"
                    }
                    key={"li" + x}
                  >
                    <a
                      className="page-link"
                      href={`/products?page=${x}`} // لینک واقعی برای سئو
                      onClick={(e) => {
                        e.preventDefault(); // جلوگیری از بارگذاری مجدد
                        this.onChangePage(x); // مدیریت داخلی
                      }}
                      aria-current={
                        x === this.props.currentPage ? "page" : undefined
                      }
                      rel={
                        x === this.props.currentPage - 1
                          ? "prev"
                          : x === this.props.currentPage + 1
                          ? "next"
                          : undefined
                      }
                    >
                      {x}
                    </a>
                  </li>
                ) : null
              )}
            </ul>
          </nav>
        </div>
        <div className="col-md-2">
          <span>تعداد کل : {this.props.totalCount}</span>
        </div>
      </div>
    );
  }
}
