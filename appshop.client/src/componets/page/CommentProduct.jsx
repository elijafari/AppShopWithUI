import { useState } from "react";
import { Modal, Button, Form, Card } from "react-bootstrap";
import React from "react";
import api from "../tools/axiosConfig";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import { TextBox } from "../tools/TextBox";
import { DropdownApp } from "../tools/DropdownApp";
import { ErrorHanding,validInput } from "../Utility";
import { TextareaApp } from "../tools/TextareaApp";

export class CommentProduct extends React.Component {
  constructor(props) {
    super(props);
    this.isEdit = props.isEdit;
    this.state = {
      showAll: false,
      showModal: false,
      productId:this.props.productId,
      comments: this.props.comments?.slice(0, 2) || [],
      name: "",
      message:"",
      rate:null

    };
  }
  moreShow() {
    let showAll = !this.state.showAll;
    let comments = showAll ? this.props.comments : this.props.comments.slice(0, 2);
    this.setState({ showAll, comments });
  }

  addData() {
    if (!validInput(NotificationManager, this.state.name, "نام و نام خانوادگی"))
      return;
    if (!validInput(NotificationManager, this.state.rate, "امتیاز"))
      return;
    if (!validInput(NotificationManager, this.state.message, "توضیحات"))
      return;

    this.setState({ loading: true });
    api.post("/Contact/AddComment", this.state)
      .then(res => {
        this.setState({ loading: false });
        if (res.status === 200) {
          NotificationManager.success("نظر شما با موفقیت ثبت شد", "پیام");
          this.setState({ name: "", rate: null, message: "" ,showModal:false});
        } else {
          ErrorHanding(NotificationManager, res.data.message);
        }
      })
      .catch((error) => {
        ErrorHanding(NotificationManager, error);
        this.setState({ loading: false });
      })
  };

    render() {

return (
  <>
    <div className="row align-items-center mt-5 mb-3">
      <div className="col-6">
        <h5
          className="fw-bold m-0"
          style={{ fontFamily: "Vazirmatn" }}
        >
          نظرات کاربران
        </h5>
      </div>

      <div className="col-6 text-start">
        <Button
          style={{ fontFamily: "Vazirmatn" }}

          variant="primary"
          onClick={() => { this.setState({ showModal: true }) }}>
          ثبت نظر
        </Button>
      </div>
    </div>

    {
      this.state.comments.length === 0 ? (
        <div className="alert alert-light text-center">
          هنوز نظری ثبت نشده است.
        </div>
      ) : (
        <>
          {this.state.comments.map((item, index) => (
            <Card className="mb-3 shadow-sm" key={index}
              style={{ fontFamily: "Vazirmatn" }}>
              <Card.Body>
                <div className="d-flex justify-content-between">
                  <strong>{item.name}</strong>
                  <span className="text-warning">
                    {"★".repeat(item.rate)}
                    {"☆".repeat(5 - item.rate)}
                    {`(${item.rate})`}
                  </span>
                </div>
                <p className="mt-2 mb-0">{item.message}</p>
              </Card.Body>
            </Card>
          ))}

          {this.props.comments.length > 2 && (
            <div className="text-center">
              <Button
                variant="outline-primary"
                style={{ fontFamily: "Vazirmatn" }}
                onClick={() => this.moreShow()}
              >
                {this.state.showAll ? "نمایش کمتر" : "نمایش نظرات بیشتر"}
              </Button>
            </div>
          )}
        </>
      )
    }
    {/* Modal */}

    <Modal show={this.state.showModal} onHide={() => { this.setState({ showModal: false }) }} centered>
      <Modal.Header closeButton>
        <Modal.Title
          style={{ fontFamily: "Vazirmatn" }}
        >
          ثبت نظر
        </Modal.Title>
      </Modal.Header>

      <Modal.Body style={{ fontFamily: "Vazirmatn" }}>

        <TextBox
          context={this}
          title="نام و  نام خانوادگی"
          name="name"
          type="text"
          className="col-12"
        />
        <DropdownApp
          context={this}
          name="rate"
          title="امتیاز"
          className="col-12"
          data={[
            { value: 5, title: '⭐⭐⭐⭐⭐ (5)' },
            { value: 4, title: '⭐⭐⭐⭐ (4)' },
            { value: 3, title: '⭐⭐⭐ (3)' },
            { value: 2, title: '⭐⭐ (2)' },
            { value: 1, title: '⭐ (1)' },
          ]}
        />
        <TextareaApp
          context={this}
          title="توضیحات"
          name="message"
          className="col-12"
          style={{ height: '300px', textAlign: 'right' }}
        /> 
        </Modal.Body>

      <Modal.Footer>
        <Button variant="secondary"
          style={{ fontFamily: "Vazirmatn" }}
          onClick={() => { this.setState({ showModal: false }) }}>
          انصراف
        </Button>

        <Button
          variant="primary"
          style={{ fontFamily: "Vazirmatn" }}
          onClick={()=>this.addData()}>
          ثبت نظر
        </Button>
      </Modal.Footer>
    </Modal>
  </>
)
    }
  }