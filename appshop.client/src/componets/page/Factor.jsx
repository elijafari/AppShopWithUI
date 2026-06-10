import React, { useRef } from "react";
import { Modal, Button, Row, Col } from "react-bootstrap";

export function Factor(props) {

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
            printWindow.print();
            printWindow.close();
        }, 500);
    };

    return (

        <Modal show={props.show}
            onHide={() => props.onHide()}
            size="lg" centered>
            <Modal.Header closeButton>
                <Modal.Title>فاکتور فروش</Modal.Title>
            </Modal.Header>

            <Modal.Body id="invoice-print">
                <div ref={printRef} className="invoice">
                    <div className="invoice-header">
                        <div>شماره فاکتور: {props.order?.factorNumber}</div>
                        <br />
                        <div>تاریخ سفارش{props.order?.solorDateOrder}    </div>
                        <br />
                        <div>تاریخ تحویل{props.order?.solorDateDelivery}</div>
                    </div>

                    <hr />

                    <div className="customer-info">
                        <p>نام مشتری: {props.order?.fullName} </p>
                        <p>شماره همراه {props.order?.phone} </p>
                    </div>

                    <table className="table table-bordered">
                        <thead>
                            <tr>
                                <th>ردیف</th>
                                <th>شرح کالا</th>
                                <th>تعداد</th>
                                <th>قیمت</th>
                                <th>جمع</th>
                            </tr>
                        </thead>
                        <tbody>
                            {props.order?.items?.map((item, index) => (
                                <tr key={index}>
                                    <td>{index + 1}</td>
                                    <td>{item.name}</td>
                                    <td>{item.count}</td>
                                    <td>{item.price.toLocaleString()}</td>
                                    <td>{(item.count * item.price).toLocaleString()}</td>
                                </tr>
                            ))}
                        </tbody>
                    </table>

                    <div className="text-left mt-4">
                        <p> مالیات بر ارزش افزوده:  {props.order?.gildPrice.toLocaleString()} تومان  </p>
                        <p> مبلغ نهایی :    {props.order?.finalPrice.toLocaleString()} تومان   </p>
                    </div>
                </div>
            </Modal.Body>

            <Modal.Footer>
                <button
                    className="btn btn-primary"
                    onClick={() => window.print()}
                >
                    چاپ فاکتور
                </button>
            </Modal.Footer>
        </Modal>

    );
}