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
import Modal from "react-bootstrap/Modal";
import Button from "react-bootstrap/Button";
export class Orders extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      show: false,
      orders: [],
      loading: true,
      msg:"",
      isAdmin: false, // از توکن یا پروفایل بیار
    };
    this.statues = ["ثبت اولیه", "تایید سفارش", "ارسال سفارش", "تحویل سفارش", "مرجوع سفارش"];
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
  changeStatuesOrder() {
    var e=this.state.order;
    var data = {
      id: e.id,
      shopStatues: e.statues + 1
    }

    api.post("/orderBuy/ChangeShopStatues", data)
      .then(res => {
        this.setState({ loading: false });
        if (res.status === 200) {
          this.getOrders();
            this.closeModal();
        } else {
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
        this.setState({ loading: false });
      })
  }
  cancelOrder() {
        var e=this.state.order;
    var data = {
      id: e.id,
    }

    api.post("/orderBuy/cancelOrder", data)
      .then(res => {
        this.setState({ loading: false });
        if (res.status === 200) {
          this.getOrders();
               this.closeModal();
        } else {
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
        this.setState({ loading: false });
      })
  }

  changeOrder()
  {
    if(this.state.isAdmin)
      this.changeStatuesOrder();
    else
      this.cancelOrder();
  }
  showModal(e) {
    var msg=" آیا می خواهید لغو سفارش انجام شود؟ ";
    if(this.state.isAdmin)
     msg=" آیا می خواهید "+this.statues[e.statues]+" انجام شود؟ ";
    this.setState({order:e,msg:msg, show: true });
  }
  closeModal() {
    this.setState({ show: false });
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
          <>
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
                            onClick={() => this.showModal(order)}
                          > تغییر وضعیت
                          </button>
                        ) : (
                          <button
                            className="btn btn-sm btn-danger"
                             onClick={() => this.showModal(order)}
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


            <Modal
              show={this.state.show}
              onHide={() => this.closeModal()}
              backdrop="static"
              keyboard={false}
            >
              <Modal.Header closeButton>
                <Modal.Title className="fs-6">{this.state.isAdmin==true?"تغییر وضعیت":"لغو سفارش"}</Modal.Title>
              </Modal.Header>
              <Modal.Body>{this.state.msg}</Modal.Body>
              <Modal.Footer>
                <Button variant="secondary" onClick={() => this.closeModal()}>
                  خیر
                </Button>
                <Button variant="primary" onClick={()=>this.changeOrder()}>بله</Button>
              </Modal.Footer>
            </Modal>
          </>
        )}
      </div>
    );
  }
}
