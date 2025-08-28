import api from "../tools/axiosConfig";
import { Component } from "react";
import { TextBox } from "../tools/TextBox";
import { DropdownApp } from "../tools/DropdownApp";
import { ButtonReturn } from "../tools/ButtonReturn";
import { ButtonWaith } from "../tools/ButtonWaith";
import Modal from "react-bootstrap/Modal";
import { ErrorHanding } from "../Utility";
import { TrackingCode } from "../tools/TrackingCode";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "../../App.css";
export class Cart extends Component {
  constructor(props) {
    super(props);
    this.state = {
      step: 1,
      data: [],
      updateKey: 1,
      updateKeyCity: 1,
      days: [],
      cityAll: [],
      province: [],
      city: [],
      trackingCode: 10001,
      show: false,
      payTypies: [{
        title: "پرداخت در محل", value: 1,
        // title:"آنلاین",value:2
      }],
      loading: false,
      address: []
    };

    this.header = [
      "ردیف",
      "نام محصول",
      "قیمت واحد تومان",
      "تعداد",
      "قیمت کل  تومان",
      "",
      "",
    ];
  }
  componentDidMount() {
    let data = JSON.parse(localStorage.getItem("selectedItem"));
    this.getCity();
    this.getDay();
    this.refreshTable(data);
  }
  onChangeProvice(e) {
    var city = this.state.cityAll.filter(x => x.parentId == e.value);
    var array = [];
    city.forEach((element) => {
      array.push({ title: element.name, value: element.id });
    });
    this.setState(
      {
        city: array,
        updateKeyCity: this.state.updateKeyCity + 1,
      }
    )
  }
  getCity() {
    api.get("/City/GetAll").then((response) => {
      var cityAll = response.data.data;
      var array = [];
      cityAll.filter(x => x.parentId == null).forEach((element) => {
        array.push({ title: element.name, value: element.id });
      });
      this.setState({
        cityAll
        , province: array,
      });
    });
  }
  getDay() {
    api.get("/OrderBuy/GetDays/").then((response) => {
      var array = [];
      response.data.data.forEach((element) => {
        array.push({ title: element.title, value: element.key });
      });
      this.setState({
        days: array
      });
    });
  }
  add(i) {
    let data = this.state.data;
    data[i].count = data[i].count + 1;
    this.refreshTable(data);
  }
  remove(i) {
    let data = this.state.data;
    data[i].count = data[i].count - 1;
    if (data[i].count === 0) data.splice(i, 1);
    this.refreshTable(data);
  }
  /*************  ✨ Windsurf Command ⭐  *************/
  /**
   * Refresh the table with new data and store it in local storage
   * @param {array} data - The new data to refresh the table with
   */
  /*******  9214bf84-9c21-4e2a-906d-1f5cb8e1429d  *******/
  refreshTable(data) {
    this.setState({
      data: data,
      updateKey: this.state.updateKey + 1,
    });
    localStorage.setItem("selectedItem", JSON.stringify(data));
  }
  onView(e) {
    window.location.href = "/productView/" + e.id;
  }
  AddData() {
    if (this.state.data == null) {
      NotificationManager.error("ایتمی برای ثبت سفارش وجود ندارد", "خطا");
      return;
    }

    if (this.state.data.length == 0) {
      NotificationManager.error("ایتمی برای ثبت سفارش وجود ندارد", "خطا");
      return;
    }
    if (this.state.provinceId == null) {
      NotificationManager.error("استان انتخاب نشده است", "خطا");
      return;
    }
    if (this.state.cityId == null) {
      NotificationManager.error("شهر انتخاب نشده است", "خطا");
      return;
    }

    if (this.state.postalCode == null) {
      NotificationManager.error("کدپستی وارد نشده است", "خطا");
      return;
    }

    if (this.state.addressStr == null) {
      NotificationManager.error("آدرس وارد نشده است", "خطا");
      return;
    }

    if (this.state.dateDelivery == null) {
      NotificationManager.error("تاریخ تحویل سفارش انتخاب نشده است", "خطا");
      return;
    }

    if (this.state.payType == null) {
      NotificationManager.error("نوع پرداخت انتخاب نشده است", "خطا");
      return;
    }


    var data = {
      items: [],
      address: {
        addressStr: this.state.addressStr,
        postalCode: this.state.postalCode,
        cityId: this.state.cityId
      },
      dateDelivery: this.state.dateDelivery,
      payType: this.state.payType,
    };

    this.state.data.map((x, i) =>
      data.items.push({
        productId: x.data.id,
        price: x.data.price,
        count: x.count
      }))



    this.setState({ loading: true });
    api.post("/orderBuy/add", data)
      .then((res) => {
        this.setState({ loading: false });
        if (res.status === 200) {
          this.setState({ trackingCode: res.data.data, step: 2 });
          localStorage.removeItem("selectedItem");

        } else
          ErrorHanding(NotificationManager, res.data.message);
      })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
        this.setState({ loading: false });
      });
  }
  showModal() {

    api.get("/Address/GetByUserId").then((response) => {
      this.setState({ address: response.data.data, show: true });
    })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
        this.setState({ loading: false });
      });
  }
  closeModal() {
    this.setState({ show: false });
  }
  render() {
    return (
      <div>
        {this.state.step == 1 && (
          <>
            <div className="card mb-1">
              <h5 className="card-header">سبد خرید</h5>
              <div className="table-responsive">
                <table className="table table-striped">
                  <thead>
                    <tr>
                      {this.header.map((x, i) => (
                        <th scope="col" key={i}>{x}</th>
                      ))}
                    </tr>
                  </thead>
                  <tbody key={this.state.updateKey}>
                    {this.state.data.map((x, i) => (
                      <tr key={i}>
                        <th scope="row">{i + 1}</th>
                        <td>{x.data.name}</td>
                        <td>{x.data.price.toLocaleString()}</td>
                        <td>{x.count}</td>
                        <td>{(x.count * x.data.price).toLocaleString()}</td>
                        <td>
                          <button
                            type="button"
                            className="btn btn-success btn-sm marginApp"
                            onClick={() => this.add(i)}
                          >
                            +
                          </button>
                          {x.count > 0 && (
                            <button
                              type="button"
                              className="btn btn-danger btn-sm"
                              onClick={() => this.remove(i)}
                            >
                              -
                            </button>
                          )}
                        </td>
                        <td>
                          <button
                            type="button"
                            className="btn btn-info btn-sm"
                            onClick={() => this.onView(x)}
                          >
                            اطلاعات بیشتر
                          </button>
                        </td>
                      </tr>
                    ))}

                    <tr>
                      <td colSpan={3}>جمع</td>
                      <td className="fw-bold text-success">{this.state.data.reduce((acc, x) => acc + x.count, 0)}</td>
                      <td className="fw-bold text-success">{this.state.data.reduce((acc, x) => acc + (x.count * x.data.price), 0).toLocaleString()}</td>
                      <td colSpan={2}></td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>

            <div className="card mb-1">
              <h5 className="card-header">ثبت آدرس</h5>
              <div className="g-3 p-3">
                <button className="col-md-1 col-sm-12 btn btn-primary" onClick={() => this.showModal()}>تاریخچه آدرس</button>
                <div className="row">
                  <DropdownApp
                    context={this}
                    name="provinceId"
                    title="استان"
                    className="col-md-4 col-sm-12"
                    data={this.state.province}
                    onChange={(e) => this.onChangeProvice(e)}
                  />
                  <DropdownApp
                    context={this}
                    name="cityId"
                    title="شهر"
                    className="col-md-4 col-sm-12"
                    data={this.state.city}
                    updateKey={this.state.updateKeyCity}
                  />

                  <TextBox
                    context={this}
                    title="کد پستی"
                    name="postalCode"
                    type="number"
                    className="col-md-4 col-sm-12"
                  />

                  <TextBox
                    context={this}
                    title="آدرس"
                    name="addressStr"
                    className="col-md-12 col-sm-12"
                    readOnly={true}
                  />
                </div>
              </div>

              <div className="card mb-1">
                <h5 className="card-header">انتخاب تاریخ تحویل سفارش</h5>
                <div className="row g-3 p-3">
                  <DropdownApp
                    title="تاریخ دریافت سفارش"
                    className="col-md-4 col-sm-12"
                    context={this}
                    name="dateDelivery"
                    data={this.state.days}
                  />
                  <DropdownApp
                    title="نوع پرداخت"
                    className="col-md-4 col-sm-12"
                    context={this}
                    name="payType"
                    data={this.state.payTypies}
                  />
                </div>
                <div className="d-flex justify-content-start p-3">
                  <ButtonWaith onClick={() => this.AddData()}
                    className="btn btn-success"
                    loading={this.state.loading}
                    title="ثبت سفارش" />
                  <ButtonReturn />
                </div>
              </div>
            </div>

            <Modal
              show={this.state.show}
              onHide={() => this.closeModal()}
              backdrop="static"
              keyboard={false}
               size="xl"   
            >
              <Modal.Header closeButton>
                <Modal.Title className="fs-6">تاریخچه آدرس</Modal.Title>
              </Modal.Header>
              <Modal.Body>
                <div className="table-responsive">
                  <table className="table table-bordered table-striped text-center align-middle">
                    <thead className="table-dark">
                      <tr>
                        <th></th>
                        <th>شهر</th>
                        <th>کد پستی</th>
                        <th>آدرس</th>
                      </tr>
                    </thead>
                    <tbody>
                      {this.state.address.map((x, index) => (
                        <tr key={index}>
                          <td>
                            <button
                              className="btn btn-sm btn-info"
                              onClick={() => window.location.href = `/OrderDetails/${order.id}`}
                            >
                              انتخاب
                            </button>
                          </td>
                          <td>{x.city}</td>
                          <td>{x.postalCode}</td>
                          <td>{x.addressStr}</td>
                        </tr>
                      ))}
                    </tbody>
                  </table>
                </div>
              </Modal.Body>
              <Modal.Footer />
            </Modal>


            <NotificationContainer />
          </>
        )}
        {this.state.step == 2 && (
          <TrackingCode trackingCode={this.state.trackingCode} />
        )}
      </div>
    )
  }
}
