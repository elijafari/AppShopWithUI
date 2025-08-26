import React from "react";
import api from "../tools/axiosConfig";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css"
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import { ErrorHanding } from "../Utility";
import { parseJwt } from "../Utility";
import { Loading } from "../tools/Loading";
export class Orders extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      orders: [],
      loading: true,
      isAdmin: false, // از توکن یا پروفایل بیار
    };
  }

  componentDidMount() {
    this.getOrders();
  }

  getOrders() {
    let token = localStorage.getItem("token");
    let user = parseJwt(token);

    api.post("/orderBuy/GetAll")
      .then(res => {
        this.setState({ loading: false });
        if (res.status === 200) {

          this.setState({
            orders: res.data.data,
            loading: false,
            isAdmin: user.role == "Admin" ? true : false
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
      <div dir="rtl" className="container mt-4">
        <h3 className="mb-4 text-center fw-bold">
          {this.state.isAdmin ? "مدیریت سفارشات" : "سفارشات من"}
        </h3>

        {this.state.orders.length === 0 ? (
          <div className="alert alert-warning text-center">
            هیچ سفارشی یافت نشد.
          </div>
        ) : (
          <div className="table-responsive">
            <table className="table table-bordered table-striped text-center align-middle">
              <thead className="table-dark">
                <tr>
                  {this.state.isAdmin && <th>کاربر</th>}
                  {this.state.isAdmin && <th>شماره همراه</th>}
                  <th>کد پیگیری</th>
                  <th>تاریخ سفارش</th>
                  <th>تاریخ تحویل</th>
                  <th>مبلغ (تومان)</th>
                  <th>وضعیت</th>
                  <th>جزئیات</th>
                  <th>عملیات</th>
                </tr>
              </thead>
              <tbody>
                {this.state.orders.map((order, index) => (
                  <tr key={index}>
                    {this.state.isAdmin && <td>{order.fullName}</td>}
                    {this.state.isAdmin && <td>{order.phone}</td>}
                    <td>{order.trackingCode}</td>
                    <td>{order.solorDateOrder}</td>
                    <td>{order.solorDateDelivery}</td>
                    <td>{order.totalPrice.toLocaleString()}</td>
                    <td>{order.strStatues}</td>
                    <td>
                      <button
                        className="btn btn-sm btn-info"
                        onClick={() => window.location.href = `/OrderDetails/${order.id}`}
                      >
                        مشاهده
                      </button>
                    </td>
                    <td>
                      {this.state.isAdmin ? (
                        <button
                          className="btn btn-sm btn-warning"
                          onClick={() => window.location.href = `/OrderDetails/${order.id}`}
                        >                          تغییر وضعیت
                        </button>
                      ) : (
                        <button
                          className="btn btn-sm btn-danger"
                          onClick={() => window.location.href = `/OrderDetails/${order.id}`}
                        >
                          لغو سفارش
                        </button>

                      )}
                    </td>
                  </tr>
                ))}
              </tbody>
            </table>
          </div>
        )}
      </div>
    );
  }
}
