import React, { Component } from "react";
import { Pageing } from "../tools/Pageing";
import { ButtonRoute } from "../tools/ButtonRoute";
import api from "../tools/axiosConfig";
import { Loading } from "../tools/Loading";
import { FiRefreshCcw } from "react-icons/fi";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";

export class VisitList extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: [],
      updateKey: 1,
      loading: false, };
    this.header = [
      "ردیف",
      "تاریخ",
      "نام صفحه",
      "تعداد"
    ];
  }
  componentDidMount() {
    this.loadDate();
  }
  loadDate() {
    this.setState({
      loading: false,
    });
    api.get("/visit/GetAll").then((response) => {
   this.setState({
        data: response.data.data,
        loading: true,
        updateKey: this.state.updateKey + 1,
      });
    });
  }
  render() {
    return (
      <>
        <div className="card" style={{ cursor: "pointer" }}>
          <div className="card-header">
            <h5> آمار مشاهده سایت
            </h5>
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
                      <tr key={"tr" + i}>
                        <td data-label="ردیف">{1 + i}</td>
                        <td data-label="تاریخ">{x.date}</td>
                        <td data-label="نام صفحه">{x.namePage}</td>
                        <td data-label="تعداد">{x.count}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </>
            )}
          </div>
        </div>
      </>
    );
  }
}
