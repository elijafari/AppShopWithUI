import React from "react";
import api from "../tools/axiosConfig";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css"
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";

import { ErrorHanding, toPersianNumber } from "../Utility";
import { Loading } from "../tools/Loading";
import Modal from "react-bootstrap/Modal";

export class ReportProvince extends React.Component {
  constructor(props) {
    super(props);
    this.state = { list: [] ,list2:[],showModal:false}
  }


  componentDidMount() {
    this.getOrders();
  }

  getOrders() {

    api.post("/orderBuy/GetReportProvince", {})
      .then(res => {
        this.setState({ loading: false });
        if (res.status === 200) {

          this.setState({
            list: res.data.data,
            loading: false,
          });
        } else {
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
        this.setState({ loading: false });
      })
  }
  showDetial(e)
  {
    debugger
        api.post("/orderBuy/GetReportProductProvince", {provinceId:e.provinceId})
      .then(res => {
        if (res.status === 200) {

          this.setState({
            list2: res.data.data,
            showModal:true,
            provinceName:e.provinceName
          });
        } else {
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
      })
  }
  render() {
    if (this.state.loading) {
      return <Loading />
    }

    return (

      <div dir="rtl" className="container mt-4 fontApp">

        <h3 className="mb-4 text-center fw-bold">
          گزارش فروش بر اساس استان ها
        </h3>
        {/* 
        <div
          className="col-md-6 col-sm-12 d-flex align-items-end gap-2 mb-3"
        >
          <DropdownApp
            context={this}
            name="statuesId"
            title="وضعیت سفارش"
            data={this.state.statuesList}
          />

          <button
            onClick={() => this.getOrders()}
            className="btn btn-success"
            style={{ fontFamily: "Vazirmatn" }}
          >
            نمایش
          </button>
        </div> */}
        <>
          <div className="table-responsive" style={{ minHeight: "300px" }}>
            <table className="table table-bordered table-striped text-center align-middle">
              <thead className="table-dark">
                <tr>
                  <th>ردیف</th>
                  <th>نام استان</th>
                  <th>تعداد سفارش ها</th>
                  <th>تعداد کالا های ارسالی</th>
                  <th>عملیات</th>
                </tr>
              </thead>
              <tbody>
                {this.state.list.map((x, index) => (
                  <tr key={index}>
                    <td data-label="ردیف">{toPersianNumber(index + 1)}</td>
                    <td data-label="نام استان">{x.provinceName}</td>
                    <td data-label="تعداد سفارش ها">{x.countFactor.toLocaleString("fa-IR")}</td>
                    <td data-label="تعداد کالاهای ارسالی">{x.countProduct.toLocaleString("fa-IR")}</td>
                    <td>
                      <button
                        className="btn btn-sm btn-info"
                        type="button"
                        onClick={()=>this.showDetial(x)}
                      >
                        نمایش جزئیات
                      </button>
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>


          <Modal
            show={this.state.showModal}
            onHide={() =>{this.setState({ showModal: false ,list2:[]})}}
            backdrop="static"
            keyboard={false}
          >
            <Modal.Header closeButton>
              <Modal.Title className="fs-6">لیست کاهای های ارسالی به استان {this.state.provinceName}</Modal.Title>
            </Modal.Header>
            <Modal.Body>
              <table className="table table-bordered table-striped text-center align-middle">
                <thead className="table-dark">
                  <tr>
                    <th>ردیف</th>
                    <th>نام کالا</th>
                    <th>تعداد</th>
                  </tr>
                </thead>
                <tbody>
                  {this.state.list2.map((x, index) => (
                    <tr key={index}>
                      <td data-label="ردیف">{toPersianNumber(index + 1)}</td>
                      <td data-label="نام کالا">{x.productName}</td>
                      <td data-label="تعداد">{x.count.toLocaleString("fa-IR")}</td>

                    </tr>
                  ))}
                </tbody>
              </table>
            </Modal.Body>
            <Modal.Footer />
          </Modal>
        </>
      </div>
    );
  }
}
