import { useState } from "react";
import Button from "react-bootstrap/Button";
import Modal from "react-bootstrap/Modal";
import "bootstrap/dist/css/bootstrap.rtl.min.css";
import '../App.css';

export function ModalApp(props) {
  const [show, setShow] = useState(false);

  const handleClose = () => setShow(false);
  const handleShow = () => setShow(true);
  const handleOk =()=>
  { setShow(false);
    props.handleOk();
  }

  return (
    <>
       <button type="button" className={props.className} onClick={handleShow}>
        {props.btnTitle}
        </button>   

      <Modal
        show={show}
        onHide={handleClose}
        backdrop="static"
        keyboard={false}
      >
        <Modal.Header closeButton>
          <Modal.Title>{props.headTitle}</Modal.Title>
        </Modal.Header>
        <Modal.Body>{props.msg}</Modal.Body>
        <Modal.Footer>
          <Button variant="secondary" onClick={handleClose}>
            {props.noTitle}
          </Button>
          <Button variant="primary" onClick={handleOk}> {props.yesTitle} </Button>
        </Modal.Footer>
      </Modal>
    </>
  );
}
