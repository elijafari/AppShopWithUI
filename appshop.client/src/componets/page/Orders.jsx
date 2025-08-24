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
export  class Orders extends React.Component {
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
    api.post("/orderBuy/GetAll")
      .then(res => {
        this.setState({ loading: false });
        if (res.status === 200) {
          this.setState({
            orders: res.data.data,
            loading: false,
            isAdmin: localStorage.getItem("role") === "Admin" // نقش از پروفایل
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
      return <div className="text-center mt-5">⏳ در حال بارگذاری...</div>;
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
                  <th>کد پیگیری</th>
                  <th>تاریخ سفارش</th>
                  <th>تاریخ تحویل</th>
                  <th>مبلغ (تومان)</th>
                  <th>وضعیت</th>
                  <th>جزئیات</th>
                </tr>
              </thead>
              <tbody>
                {this.state.orders.map((order, index) => (
                  <tr key={index}>
                    {this.state.isAdmin && <td>{order.userName}</td>}
                    <td>{order.trackingCode}</td>
                    <td>{order.solorDateOrder}</td>
                    <td>{order.solorDateDelivery}</td>
                    <td>{order.totalPrice.toLocaleString()}</td>
                    <td>{order.strStatues}</td>
                    <td>
                      <button
                        className="btn btn-sm btn-info"
                        onClick={() => alert("نمایش جزئیات سفارش " + order.trackingCode)}
                      >
                        مشاهده
                      </button>
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
