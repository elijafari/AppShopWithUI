import React, { Component } from "react";
import { Pageing } from "../tools/Pageing";
import { ButtonRoute } from "../tools/ButtonRoute";
import  api  from "../tools/axiosConfig";
import { Loading } from "../tools/Loading";
import { FiRefreshCcw } from "react-icons/fi";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "../../App.css";
export class ProductList extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: [],
      updateKey: 1,
      loading: false,
      pageCount: 0,
      currentPage: 1,
    
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
   api.post("/product/GetAllAdmin", { pageNumber: pageNumber }).then((response) => {
      this.setState({
        data: response.data.data.data,
        pageCount: response.data.data.pageCount,
        totalCount: response.data.data.totalCount,
        pageSize: response.data.data.pageSize,
        currentPage: pageNumber,
        startRow: response.data.data.startRow+1,
        loading: true,
        updateKey: this.state.updateKey + 1,
      });
    });
  }
onEdit(e)
{
     window.location.href ="/product/" + e.id;
}
  render() {
    return (
      <>
        <ButtonRoute
          title="ثبت کالا جدید"
          link="/product"
          className="btn btn-info"
        />
        <div className="card" style={{ cursor: "pointer" }}>
          <div className="card-header">
            <h5> لیست کالاهای موجود
            <FiRefreshCcw 
            className="iconRefresh" onClick={()=>this.loadDate(this.state.currentPage)}/></h5>
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
                  <tbody key={this.state.updateKey}>
                    {this.state.data.map((x, i) => (
                      <>
                        <tr key={"tr" + i}>
                          <th scope="row">{this.state.startRow + i}</th>
                          <td>{x.code}</td>
                          <td>{x.name}</td>
                          <td>{x.price.toLocaleString()}</td>
                          <td>{x.isActive ? `*` : ``}</td>
                          <td>
                            <button
                              type="button"
                              className="btn btn-success marginApp"
                              onClick={() => this.onEdit(x)}
                            >
                              ویرایش
                            </button>
                          </td>
                        </tr>
                      </>
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
