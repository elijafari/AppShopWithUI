import React, { Component } from "react";
import { Pageing } from "../tools/Pageing";
import { ButtonRoute } from "../tools/ButtonRoute";
import { TextBox } from "../tools/TextBox";
import { FaSearch } from "react-icons/fa";
import api from "../tools/axiosConfig";
import { Loading } from "../tools/Loading";
import { toPersianNumber} from "../Utility";

import { FiRefreshCcw } from "react-icons/fi";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";

export class ProductList extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: [],
      updateKey: 1,
      loading: false,
      pageCount: 0,
      currentPage: 1,
      productName: "",
    };
    this.header = [
      "ردیف",
      "کد محصول",
      "نام محصول",
      "قیمت واحد تومان",
      "موجود",
      "",
    ];
  }
  componentDidMount() {
    this.loadDate(1);
  }
  loadDate(pageNumber) {
    this.setState({
      loading: false,
    });
    api.post("/product/GetAllAdmin", { pageNumber: pageNumber, productName: this.state.productName }).then((response) => {
      this.setState({
        data: response.data.data.data,
        pageCount: response.data.data.pageCount,
        totalCount: response.data.data.totalCount,
        pageSize: response.data.data.pageSize,
        currentPage: pageNumber,
        startRow: response.data.data.startRow + 1,
        loading: true,
        updateKey: this.state.updateKey + 1,
      });
    });
  }
  onEdit(e) {
    window.location.href = "/product/" + e.id;
  }
  render() {
    return (
      <>
        <div className="card mt-2 mb-2">

          <div className="card-body">
            <div className="row g-3">

              <TextBox
                context={this}
                title="نام کالا"
                name="productName"
                className="col-md-6 col-sm-12"
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
        <div className="card" >
          <div className="card-header">
            <h5> لیست کالاها
              <FiRefreshCcw
                className="iconRefresh" onClick={() => this.loadDate(this.state.currentPage)} /></h5>
          </div>
          <div className="card-body">
            {!this.state.loading ? (
              <Loading />
            ) : (
              <>
                <table className="table table-striped">
                  <thead>
                    <tr>
                      {this.header.map((x) => (
                        <th scope="col">{x}</th>
                      ))}
                    </tr>
                  </thead>
                  <tbody>
                    {this.state.data.map((x, i) => (
                      <tr key={"tr" + i} style={{ fontFamily: 'Vazirmatn' }}>
                        <td data-label="ردیف" 
                        >{toPersianNumber(this.state.startRow + i)}</td>
                        <td data-label="کد">{toPersianNumber(x.code)}</td>
                        <td data-label="نام">{x.name}</td>
                        <td data-label="قیمت">{x.price.toLocaleString('fa-IR')}</td>
                        <td data-label="وضعیت" className={x.isActive ? 'text-success' : 'text-danger'}>{x.isActive ? "موجود" : "ناموجود"}</td>
                        <td data-label="عملیات">
                          <button
                            type="button"
                            className="btn btn-warning marginApp"
                            onClick={() => this.onEdit(x)}
                            style={{ fontFamily: 'Vazirmatn' }}
                          >
                            ویرایش
                          </button>
                        </td>
                      </tr>
                    ))}
                  </tbody>


                </table>
                <br />
                {this.state.pageCount > 0 && (
                  <Pageing
                    updateKey={this.state.updateKey}
                    currentPage={this.state.currentPage}
                    pageCount={this.state.pageCount}
                    totalCount={this.state.totalCount}
                    onChangePage={(e) => this.loadDate(e)}
                  />
                )}
              </>
            )}
          </div>
        </div>
      </>
    );
  }
}
