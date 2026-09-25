import React, { useRef } from "react";
import { Modal, Button } from "react-bootstrap";

export function Bijak(props) {

    const printRef = useRef(null);

    const printLabel = () => {

        if (!printRef.current) return;

        const printWindow = window.open(
            "",
            "_blank",
            "width=900,height=700"
        );

        if (!printWindow) return;

        printWindow.document.write(`
            <!DOCTYPE html>
            <html dir="rtl">
            <head>

                <meta charset="utf-8" />

                <title>بیجک پستی</title>

                  <style>
          body{
              font-family:tahoma;
              padding:20px;
              direction:rtl;
          }

          .label{
              border:2px solid #000;
              padding:20px;
          }

          .row{
              display:flex;
              gap:20px;
          }

          .col{
              flex:1;
              border:1px solid #ccc;
              padding:10px;
          }

          .tracking{
              text-align:center;
              margin-top:20px;
          }

          .tracking-code{
              font-size:24px;
              font-weight:bold;
          }

          p{
              margin:8px 0;
          }
      </style>
            </head>

            <body>

                ${printRef.current.innerHTML}

            </body>

            </html>
        `);

        printWindow.document.close();

        setTimeout(() => {

            printWindow.focus();

            printWindow.print();

            printWindow.close();

        }, 500);
    };


    return (

        <Modal
            show={props.show}
            onHide={() => props.onHide()}
            size="lg"
            centered
        >

            <Modal.Header closeButton>

                <Modal.Title className="fs-6">
                    بیجک پستی
                </Modal.Title>

            </Modal.Header>


            <Modal.Body
                style={{
                    fontFamily: "Vazirmatn",
                    direction: "rtl"
                }}
            >

                <div ref={printRef}>

                    {/* کادر اصلی */}
                    <div
                        className="invoice-box"
                        style={{
                            position: "relative",
                            border: "1px solid #ccc",
                            borderRadius: "8px",
                            padding: "15px",
                            margin: "10px auto",
                            width: "96%",
                            overflow: "hidden"
                        }}
                    >

                        {/* لوگوی پس زمینه */}
                        <img
                            src="./icon-512.png"
                            alt=""
                            style={{
                                position: "absolute",
                                left: "50%",
                                top: "50%",
                                transform: "translate(-50%, -50%)",
                                width: "80%",
                                height: "80%",
                                objectFit: "contain",
                                filter: "grayscale(100%) brightness(0)",
                                opacity: 0.2,
                                zIndex: 0,
                                pointerEvents: "none"
                            }}
                        />


                        {/* محتوای اصلی */}
                        <div
                            className="invoice-content"
                            style={{
                                position: "relative",
                                zIndex: 1
                            }}
                        >

                            {/* ================= فرستنده ================= */}

                            <div
                                className="info-box"
                                style={{
                                    border: "1px solid #ccc",
                                    borderRadius: "8px",
                                    padding: "15px",
                                    margin: "10px 0"
                                }}
                            >

                                <h5>
                                    فرستنده
                                </h5>

                                <p>
                                    <strong>
                                        نام:
                                    </strong>{" "}
                                    احسان جعفری
                                </p>

                                <p>
                                    <strong>
                                        تلفن:
                                    </strong>{" "}
                                    09124462355
                                </p>

                                <p>
                                    <strong>
                                        آدرس:
                                    </strong>{" "}
                                    تهران، خیابان لاله زار نو،
                                    بعد از تقاطع منوچهری،
                                    پاساژ سبحان،
                                    طبقه همکف واحد 19
                                    (الکتروایجی)
                                </p>

                            </div>


                            <hr />


                            {/* ================= گیرنده ================= */}

                            <div
                                className="info-box"
                                style={{
                                    border: "1px solid #ccc",
                                    borderRadius: "8px",
                                    padding: "15px",
                                    margin: "10px 0"
                                }}
                            >

                                <h5>
                                    گیرنده
                                </h5>

                                <p>
                                    <strong>
                                        نام:
                                    </strong>{" "}
                                    {props.fullName}
                                </p>

                                <p>
                                    <strong>
                                        تلفن:
                                    </strong>{" "}
                                    {props.phone}
                                </p>

                                <p>
                                    <strong>
                                        آدرس:
                                    </strong>{" "}
                                    {props.address}
                                </p>

                            </div>

                        </div>

                    </div>

                </div>

            </Modal.Body>


            {/* ================= دکمه ها ================= */}

            <Modal.Footer>

                <Button
                    variant="secondary"
                    onClick={() => props.onHide()}
                >
                    بستن
                </Button>


                <Button
                    variant="primary"
                    onClick={printLabel}
                >
                    چاپ
                </Button>

            </Modal.Footer>

        </Modal>

    );
}