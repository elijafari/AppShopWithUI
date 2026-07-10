import React, { Component } from "react";
import { Pageing } from "../tools/Pageing";
import { ButtonRoute } from "../tools/ButtonRoute";
import api from "../tools/axiosConfig";
import { Loading } from "../tools/Loading";
import { FiRefreshCcw } from "react-icons/fi";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";

export class CommentList extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: [],
      updateKey: 1,
      loading: false,
      title: this.props.product == true ? 'لیست نظرات' : 'لیست پیام ها',
      api: this.props.product == true ? '/Contact/GetComments' : '/Contact/GetContacts'

    };
    this.header = this.props.product == true ? ["ردیف", "تاریخ", "نام و نام خانوادگی", "نام کالا", "امتیاز", "توضیحات"]
      : ["ردیف", "تاریخ", "نام و نام خانوادگی", "پست الکترونیکی", "توضیحات"];
  }
  componentDidMount() {
    this.setState({
      loading: false,
    });
    api.get(this.state.api).then((response) => {
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
        <div className="card">
          <div className="card-header">
            <h5>{this.state.title}</h5>
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
                        <td data-label="ردیف">{i + 1}</td>
                        <td data-label="تاریخ">{x.solarCreateDate}</td>
                        {this.props.product == true ? (
                          <>   <td data-label="نام و نام خانوادگی">{x.name}</td>
                            <td data-label="نام کالا">{x.productName}</td>
                            <td data-label="امتیاز">{x.rote}</td>
                          </>
                        ) : (
                          <td data-label="پست الکترونیکی">{x.email}</td>
                        )}
                        <td data-label="توصیحات">{x.message}</td>
                      </tr>
                    ))}
                  </tbody>
                </table>
              </div>
            )}
          </div>
        </div>
      </>
    );
  }
}
