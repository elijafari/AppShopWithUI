import React from "react";
import api from "../tools/axiosConfig";
import WithRouter from "../tools/WithRouter";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css"
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import { ErrorHanding } from "../Utility";

 class OrderDetails extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      order: null,
      loading: true,
    };
  }

  componentDidMount() {
    this.getOrder();
  }
  getOrder() {
    debugger
        const id = this.props.params?.id || "";
    api.post("/orderBuy/GetById/",{id:id})
      .then(res => {
        this.setState({ loading: false });
        if (res.status === 200) {
         this.setState({ order: res.data.data, loading: false });
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
    const { order, loading } = this.state;

    if (loading) {
      return <div className="text-center mt-5">⏳ در حال بارگذاری...</div>;
    }

    if (!order) {
      return <div className="alert alert-danger text-center mt-5">سفارشی یافت نشد.</div>;
    }

    return (
      <div dir="rtl" className="container mt-4">
        <h3 className="mb-4 text-center fw-bold">جزئیات سفارش</h3>

        <div className="mb-3 text-center">
          <p>شماره پیگیری: <span className="fw-bold">{order.trackingCode}</span></p>
          <p>نام و نام خانوادگی: {order.fullName}</p>
          <p>شماره همراه {order.phone}</p>
          <p>تاریخ سفارش: {order.solorDateOrder}</p>
          <p>تاریخ تحویل: {order.solorDateDelivery}</p>
          <p>آدرس کامل: {order.strAddress}</p>
          <p>وضعیت: 
            {order.status === "Pending" && <span className="badge bg-warning mx-1">در انتظار</span>}
            {order.status === "Completed" && <span className="badge bg-success mx-1">تکمیل شده</span>}
            {order.status === "Canceled" && <span className="badge bg-danger mx-1">لغو شده</span>}
          </p>
        </div>

        <div className="table-responsive">
          <table className="table table-bordered table-striped text-center align-middle">
            <thead className="table-dark">
              <tr>
                <th>#</th>
                <th>نام کالا</th>
                <th>تعداد</th>
                <th>قیمت واحد (تومان)</th>
                <th>جمع (تومان)</th>
              </tr>
            </thead>
            <tbody>
              {order.items.map((item, index) => (
                <tr key={index}>
                  <td>{index + 1}</td>
                  <td>{item.name}</td>
                  <td>{item.count}</td>
                  <td>{item.price.toLocaleString()}</td>
                  <td>{(item.count * item.price).toLocaleString()}</td>
                </tr>
              ))}
              <tr>
                <td colSpan={4} className="fw-bold">جمع کل</td>
                <td className="fw-bold">{order.items.reduce((sum, x) => sum + x.count * x.price, 0).toLocaleString()}</td>
              </tr>
            </tbody>
          </table>
        </div>

        <div className="text-center mt-4">
          <button className="btn btn-primary me-2" onClick={() => window.location.href ="/orders"}>
            بازگشت به سفارش‌ها
          </button>
        </div>
      </div>
    );
  }
}
export default WithRouter(OrderDetails);
