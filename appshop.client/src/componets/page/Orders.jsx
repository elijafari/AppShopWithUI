import React from "react";
import api from "../tools/axiosConfig";
import { DropdownApp } from "../tools/DropdownApp";
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
import Value from "autoprefixer/lib/value";
import { Factor } from "./Factor";
export class Orders extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      show: false,
      statuesId:101,
      orders: [],
      loading: true,
      msg: "",
      isAdmin: false, // از توکن یا پروفایل بیار
      statuesList: [
        { value: 101, title: "ثبت اولیه / پرداخت شده" },
        { value: 102, title: "تایید/ ارسال / تحویل سفارش" },
        { value: 103, title: "لغو شده / مرجوعی" },
      ]
    }
    this.statues = ["ثبت اولیه", "تایید سفارش", "ارسال سفارش", "تحویل سفارش", "مرجوع سفارش",];
  }


  componentDidMount() {
    this.getOrders();
  }

  getOrders() {
    let token = localStorage.getItem("token");
    let user = parseJwt(token);

    api.post("/orderBuy/GetAll",{statuesId:this.state.statuesId})
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
    if (this.state.isCancel)
      this.cancelOrder();
    else
      this.changeStatuesOrder();
  }
  showModal(e, isCancel) {
    if (e.statues == 6) {
      NotificationManager.error("این سفارش لغو شده است امکان تغییر وضعیت وجود ندارد");
      return;
    }
    var msg = "";
    if (isCancel)
      msg = " آیا می خواهید لغو سفارش انجام شود؟ ";
    else if (this.state.isAdmin) {
      if (e.statues == 7)
        msg = "آیا می خواهید تایید سفارش انجام شود؟";
      else
        msg = " آیا می خواهید " + this.statues[e.statues] + " انجام شود؟ ";
    }
    this.setState({ order: e, msg: msg, show: true, isCancel });
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

      {this.state.isAdmin && (<div
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
        </div>)}
        {this.state.orders.length === 0 ? (
          <div className="alert alert-warning text-center">
            هیچ سفارشی یافت نشد.
          </div>
        ) : (
          <>
            <div className="table-responsive" style={{minHeight:"300px"}}>
              <table className="table table-bordered table-striped text-center align-middle">
                <thead className="table-dark">
                  <tr>
                    <th>ردیف</th>
                    {this.state.isAdmin && <th>کاربر</th>}
                    {this.state.isAdmin && <th>شماره همراه</th>}
                    <th>کد پیگیری</th>
                    <th>تاریخ سفارش</th>
                    <th>تاریخ تحویل</th>
                    {this.state.isAdmin && <th>مبلغ (تومان)</th>}
                    {/* {this.state.isAdmin && <th>مالیات بر ارزش افزوده(تومان)</th>}
                    <th>مبلغ نهایی(تومان)</th> */}
                    {this.state.isAdmin && <th>نوع پرداخت</th>}
                    {this.state.isAdmin && <th>شناسه تراکنش پرداخت</th>}
                    <th>وضعیت</th>
                    {this.state.isAdmin && <th>شماره فاکتور</th>}
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
                      {this.state.isAdmin && <td data-label="مبلغ (تومان)">{order.totalPrice.toLocaleString()}</td>}
                  {/* //    {this.state.isAdmin && <td data-label="مالیات بر ارزش افزوده (تومان)">{order.gildPrice.toLocaleString()}</td>}
                  //    <td data-label="مبلغ نهایی (تومان)">{order.finalPrice.toLocaleString()}</td> */}
                      {this.state.isAdmin && <td data-label="نوع پرداخت">{order.strPayType}</td>}
                      {this.state.isAdmin && <td data-label="شناسه تراکنش پرداخت">{order.paymentCode}</td>}
                      <td data-label="وضعیت" className={order.statues == 6 ? "text-danger" : ""}>{order.strStatues}</td>
                      {this.state.isAdmin && <td data-label="شماره فاکتور">{order.factorNumber}</td>}
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

                            <li>
                              <button
                                className="dropdown-item text-danger"
                                onClick={() => this.showModal(order, true)}>لغو سفارش </button>
                            </li>
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
                          </ul>
                        </div>
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
    <Factor
              show={this.state.showFac}
              onHide={() => { this.setState({ showFac: false }) }}
              order={this.state.selectedOrder}/>
          </>
        )}
      </div>
    );
  }
}
