import React from "react";
import api from "../tools/axiosConfig";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css"
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";

import { ErrorHanding, parseJwt } from "../Utility";
import { Loading } from "../tools/Loading";
import Modal from "react-bootstrap/Modal";
import Button from "react-bootstrap/Button";
import { Bijak } from "./Bijak";
export class Orders extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      show: false,
      orders: [],
      loading: true,
      msg: "",
      isAdmin: false, // از توکن یا پروفایل بیار
    };
    this.statues = ["ثبت اولیه", "تایید سفارش", "ارسال سفارش", "تحویل سفارش", "مرجوع سفارش",];
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
    var e = this.state.order;
    var shopStatues = e.statues;
    shopStatues = shopStatues == 7 ? 2 : shopStatues + 1;

    var data = {
      id: e.id,
      shopStatues
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
    var e = this.state.order;
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

  changeOrder() {
    if (this.state.isAdmin)
      this.changeStatuesOrder();
    else
      this.cancelOrder();
  }
  showModal(e) {
    debugger;
    var msg = " آیا می خواهید لغو سفارش انجام شود؟ ";
    if (this.state.isAdmin) {
      if (e.statues == 7)
        msg = "آیا می خواهید تایید سفارش انجام شود؟";
      else
        msg = " آیا می خواهید " + this.statues[e.statues] + " انجام شود؟ ";
    }
    this.setState({ order: e, msg: msg, show: true });
  }
  closeModal() {
    this.setState({ show: false });
  }
  render() {
    if (this.state.loading) {
      return <Loading />
    }

    return (
      <div dir="rtl" className="container mt-4 fontApp">
        <h3 className="mb-4 text-center fw-bold">
          {this.state.isAdmin ? "مدیریت سفارشات" + "(" + this.state.orders.length + ")"
            : "سفارشات من" + "(" + this.state.orders.length + ")"}
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
                    <th>ردیف</th>
                    {this.state.isAdmin && <th>کاربر</th>}
                    {this.state.isAdmin && <th>شماره همراه</th>}
                    <th>کد پیگیری</th>
                    <th>تاریخ سفارش</th>
                    <th>تاریخ تحویل</th>
                    <th>مبلغ (تومان)</th>
                    {this.state.isAdmin && <th>نوع پرداخت</th>}
                    {this.state.isAdmin && <th>شناسه تراکنش پرداخت</th>}
                    <th>وضعیت</th>
                    <th>عملیات</th>
                  </tr>
                </thead>
                <tbody>
                  {this.state.orders.map((order, index) => (
                    <tr key={index}>
                      <td data-label="ردیف">{index + 1}</td>
                      {this.state.isAdmin && <td data-label="نام و نام خانوادگی">{order.fullName}</td>}
                      {this.state.isAdmin && <td data-label="شماره همراه">{order.phone}</td>}
                      <td data-label="کد پیگیری">{order.trackingCode}</td>
                      <td data-label="تاریخ سفارش">{order.solorDateOrder}</td>
                      <td data-label="تاریخ تحویل">{order.solorDateDelivery}</td>
                      <td data-label="مبلغ (تومان)">{order.totalPrice.toLocaleString()}</td>
                      {this.state.isAdmin && <td data-label="نوع پرداخت">{order.strPayType}</td>}
                      {this.state.isAdmin && <td data-label="شناسه تراکنش پرداخت">{order.paymentCode}</td>}
                      <td data-label="وضعیت">{order.strStatues}</td>
                      <td>
                        <div className="dropdown">
                          <button
                            className="btn btn-sm btn-info dropdown-toggle"
                            type="button"
                            data-bs-toggle="dropdown"
                            aria-expanded="false"
                          >
                            عملیات
                          </button>

                          <ul className="dropdown-menu">
                            <li>
                              <button
                                className="dropdown-item"
                                style={{ fontFamily: 'Vazirmatn' }}
                                onClick={() => window.location.href = `/OrderDetails/${order.id}`}> مشاهده جزئیات </button>
                            </li>

                            {this.state.isAdmin ? (
                              <>
                                <li>
                                  <button
                                    className="dropdown-item"
                                    onClick={() => this.showModal(order)}> تغییر وضعیت </button>
                                </li>
                                {/* <li>
                                  <button
                                    className="dropdown-item"
                                    onClick={() => this.printOrder(order.id)}>چاپ فاکتور </button>
                                </li> */}
                                <li>
                                  <button className="dropdown-item"
                                    onClick={() => this.setState({ selectedOrder: order, showBjk: true })} >              چاپ بیجک
                                  </button>    </li>
                              </>
                            ) : (
                              <li>
                                <button
                                  className="dropdown-item text-danger"
                                  onClick={() => this.showModal(order)}>لغو سفارش </button>
                              </li>
                            )}
                          </ul>
                        </div>
                      </td>

                      {/* <td>
{this.state.isAdmin ? (
 <button
 className="btn btn-sm btn-warning"
 onClick={() => this.showModal(order)}
 style={{ fontFamily: 'Vazirmatn' }}
 > تغییر وضعیت
 </button>
) : (
 <button
 className="btn btn-sm btn-danger"
 onClick={() => this.showModal(order)}
 style={{ fontFamily: 'Vazirmatn' }}
 >
 لغو سفارش
 </button>

)}
</td> */}
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
                <Modal.Title className="fs-6">{this.state.isAdmin == true ? "تغییر وضعیت" : "لغو سفارش"}</Modal.Title>
              </Modal.Header>
              <Modal.Body>{this.state.msg}</Modal.Body>
              <Modal.Footer>
                <Button variant="secondary" onClick={() => this.closeModal()}>
                  خیر
                </Button>
                <Button variant="primary" onClick={() => this.changeOrder()}>بله</Button>
              </Modal.Footer>
            </Modal>

            <Bijak
              show={this.state.showBjk}
              onHide={() => { this.setState({ showBjk: false }) }}
              fullName={this.state.selectedOrder?.fullName}
              phone={this.state.selectedOrder?.phone}
              address={this.state.selectedOrder?.addressStr} />
          </>
        )}
      </div>
    );
  }
}
