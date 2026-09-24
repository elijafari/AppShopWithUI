import React, { Component } from "react";
import { TextBox } from "../tools/TextBox";
import { Modal, Button } from "react-bootstrap";

import api from "../tools/axiosConfig";
import { Loading } from "../tools/Loading";
import { toPersianNumber, validInput, ErrorHanding } from "../Utility";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import { FiRefreshCcw } from "react-icons/fi";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";

export class CategoryList extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: [],
      updateKey: 1,
      loading: false,
    };
    this.header = ["ردیف", "نام گروه"];
  }
  componentDidMount() {
    this.loadDate();
  }
  loadDate(pageNumber) {
    this.setState({
      loading: false,
    });
    api.get("/Category/GetAll").then((response) => {
      this.setState({
        data: response.data.data,
        loading: true,
        updateKey: this.state.updateKey + 1,
      });
    });
  }
  onEdit(e) {
    this.setState({
      showModal: true,
      id: e.id,
      name: e.name,
      titleModal: "ویرایش گروه کالا",
      updateKey: this.state.updateKey + 1
    })
  }
  onAdd() {
    this.setState({
      showModal: true,
      name: null,
      titleModal: "ثبت گروه کالا جدید",
      updateKey: this.state.updateKey + 1
    })

  }
  save() {
    let isEdit = this.state.id != null && this.state.id != undefined;

    if (!validInput(NotificationManager, this.state.name, "نام گروه کالا"))
      return;
    let data = { name: this.state.name, id: this.state.id }
    this.setState({ loading: true });
    api.post(isEdit ? "/Category/update" : "/Category/add", data)
      .then((res) => {
        if (res.status === 200) {
          this.setState({ loading: false, showModal: false });
          NotificationManager.success(res.data.message, "پیام");
          this.loadDate();

        } else
          ErrorHanding(NotificationManager, res.data.message);
      })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
        this.setState({ loading: false });
      });
  }
  onDeleteAction() {
    this.setState({ loading: true });
    api.get("/Category/delete?id=" + this.state.idDelete)
      .then((res) => {
        if (res.status === 200) {
          this.setState({ loading: false, showModalDelete: false });
          NotificationManager.success(res.data.message, "پیام");
          this.loadDate();

        } else {
          this.setState({ loading: false, showModalDelete: false });
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => {
        this.setState({ showModalDelete: false });
        ErrorHanding(NotificationManager, error);
      });
  }
  render() {
    return (
      <>
        <div className=" bg-light shadow-sm">
          <div className="d-flex justify-content-between align-items-center px-3 py-2">
            <div
              style={{
                display: "flex",
                alignItems: "center",
                width: "100%"
              }}
            >
              <button
                type="button"
                className="btn btn-success"
                onClick={() => this.onAdd()}
                style={{
                  fontFamily: "Vazirmatn",
                  marginRight: "auto"
                }}
              >
                + ثبت گروه جدید
              </button>
            </div>
          </div>
        </div>     <div className="card" >
          <div className="card-header">
            <h5> لیست گروه کالا ها
              <FiRefreshCcw
                className="iconRefresh" onClick={() => this.loadDate()} /></h5>
          </div>
          <div className="card-body">
            {!this.state.loading ? (
              <Loading />
            ) : (
              <>
                <table className="table table-striped">
                  <thead>
                    <tr>
                      {this.header.map((x) => (
                        <th scope="col">{x}</th>
                      ))}
                      <th />
                    </tr>
                  </thead>
                  <tbody>
                    {this.state.data.map((x, i) => (
                      <tr key={"tr" + i} style={{ fontFamily: 'Vazirmatn' }}>
                        <td data-label="ردیف">{toPersianNumber(i + 1)}</td>
                        <td data-label="نام">{x.name}</td>
                        <td data-label="عملیات">
                          <button
                            type="button"
                            className="btn btn-warning marginApp"
                            onClick={() => this.onEdit(x)}
                            style={{ fontFamily: 'Vazirmatn' }}
                          >
                            ویرایش
                          </button>
                          <button
                            type="button"
                            className="btn btn-danger marginApp"
                            onClick={() => this.setState({ idDelete: x.id, showModalDelete: true })}
                            style={{ fontFamily: 'Vazirmatn' }}
                          >
                            حذف
                          </button>
                        </td>
                      </tr>
                    ))}
                  </tbody>


                </table>
              </>
            )}

            <Modal
              show={this.state.showModal}
              onHide={() => { this.setState({ showModal: false, list2: [] }) }}
              backdrop="static"
              keyboard={false}
            >
              <Modal.Header closeButton>
                <Modal.Title className="fs-6">{this.state.titleModal}</Modal.Title>
              </Modal.Header>
              <Modal.Body>
                <TextBox
                  context={this}
                  title="نام گروه کالا"
                  name="name"
                  className="col-md-6 col-sm-12"
                  updateKey={this.state.updateKey}
                />
              </Modal.Body>
              <Modal.Footer />

              <Modal.Footer>

                <Button variant="success" onClick={() => this.save()}>
                  ثبت
                </Button>

              </Modal.Footer>
            </Modal>

            <Modal
              show={this.state.showModalDelete}
              onHide={() => { this.setState({ showModalDelete: false, }) }}
              backdrop="static"
              keyboard={false}
            >
              <Modal.Header closeButton>
                <Modal.Title className="fs-6">{this.state.titleModal}</Modal.Title>
              </Modal.Header>
              <Modal.Body>
                <span>آیا می خواهید حذف انجام شود؟</span>
              </Modal.Body>

              <Modal.Footer>

                <Button variant="secondary" onClick={() => { this.setState({ showModalDelete: false, }) }}>
                  خیر
                </Button>

                <Button variant="primary" onClick={() => this.onDeleteAction()}>
                  بله
                </Button>

              </Modal.Footer>
            </Modal>


          </div>
        </div>

        <NotificationContainer />
      </>
    );
  }
}
