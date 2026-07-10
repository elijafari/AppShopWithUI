import React, { Component } from "react";
import { Pageing } from "../tools/Pageing";
import { ButtonRoute } from "../tools/ButtonRoute";
import api from "../tools/axiosConfig";
import { Loading } from "../tools/Loading";
import { FiRefreshCcw } from "react-icons/fi";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";

export class LogList extends Component {
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
      "ردیف", "تاریخ", "خطا"
    ];
  }
  componentDidMount() {
    this.setState({
      loading: false,
    });
    api.get("/log/GetAll").then((response) => {
      this.setState({
        data: response.data.data,
        loading: true,
        updateKey: this.state.updateKey + 1,
      });
    });
  }
  sendEmail() {
    api.get("/log/SendEmail").then((response) => {
    });
  }
  render() {
    return (
      <>
        <div className="card">
          <div className="card-header">
            <h5> لیست خطاها</h5>
          </div>
          <div className="card-body">
            {!this.state.loading ? (
              <Loading />
            ) : (
              <div className="table-responsive">
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
                    <tr key={"tr" + i}>
                      <td data-label="ردیف">{i+1}</td>
                      <td data-label="تاریخ">{x.solarCreateDate}</td>
                      <td data-label="نام">{x.massege}</td>
                    </tr>
                  ))}
                </tbody>
              </table>
              </div>
            )}
            {/* <button
              className="btn btn-outline-success btn-sm"
              onClick={() => this.sendEmail()}
              style={{ fontFamily: 'Vazirmatn' }}
            >
              ارسال ایمیل
            </button> */}
          </div>
        </div>
      </>
    );
  }
}
