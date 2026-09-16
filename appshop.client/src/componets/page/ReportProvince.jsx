import React from "react";
import api from "../tools/axiosConfig";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css"
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";

import { ErrorHanding,toPersianNumber} from "../Utility";
import { Loading } from "../tools/Loading";

export class ReportProvince extends React.Component {
  constructor(props) {
    super(props);
    this.state = {list:[]}
  }


  componentDidMount() {
    this.getOrders();
  }

  getOrders() {

    api.post("/orderBuy/GetReportProvince", {  })
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
                    <th>تعداد</th>
                   {/* // <th>عملیات</th> */}
                  </tr>
                </thead>
                <tbody>
                  {this.state.list.map((x, index) => (
                    <tr key={index}>
                      <td data-label="ردیف">{toPersianNumber(index + 1)}</td>
                      <td data-label="نام استان">{x.provinceName}</td>
                      <td data-label="تعداد">{x.count.toLocaleString("fa-IR")}</td>
                      {/* <td>
                        <div className="dropdown">
                          <button
                            className="btn btn-sm btn-info dropdown-toggle"
                            type="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                          >
                            عملیات
                          </button>

                <ul className="dropdown-menu text-end"
                                style={{ fontFamily: 'Vazirmatn' }}>
                            <li>
                              <button
                                className="dropdown-item"
                                onClick={() => window.location.href = `/OrderDetails/${order.id}`}> مشاهده جزئیات </button>
                            </li>
                            {!this.state.isAdmin && order.statues == 8 &&(
                              <li>
                                <button
                                  className="dropdown-item text-primary"
                                  onClick={() => this.paymant(order)}>پرداخت</button>
                              </li>
                            )}
                           
                            {this.state.isAdmin ? (
                              <>
                                <li>
                                  <button
                                    className="dropdown-item"
                                    onClick={() => this.showModal(order, false)}> تغییر وضعیت </button>
                                </li>
                                <li>
                                  <button
                                    className="dropdown-item"
                                    onClick={() => this.setState({ selectedOrder: order, showFac: true })} >چاپ فاکتور </button>
                                </li>
                                <li>
                                  <button className="dropdown-item"
                                    onClick={() => this.setState({ selectedOrder: order, showBjk: true })} >              چاپ بیجک
                                  </button>    </li>
                              </>
                            ) : null} 
                            <li><hr className="dropdown-divider" /></li>
                            <li>
                              <button
                                className="dropdown-item text-danger"
                                onClick={() => this.showModal(order, true)}>لغو سفارش </button>
                            </li>
                          </ul>
                        </div>
                      </td> */}
                    </tr>
                  ))}
                </tbody>
              </table>
            </div>

          </>
      </div>
    );
  }
}
