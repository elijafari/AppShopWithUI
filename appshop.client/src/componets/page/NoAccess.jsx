import React, { Component } from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import { FaUserLock } from "react-icons/fa";
import "../../App.css"; // برای استایل انیمیشن

export class NoAccess extends Component {
    render() {
        return (
            <div className="container vh-100 d-flex flex-column justify-content-center align-items-center text-center">
                <div className="card shadow-lg p-4 border-danger animate-card" style={{ maxWidth: "500px" }}>
                    <div className="card-body">
                        <h1 className="text-danger mb-4">
                            <FaUserLock />
                            عدم دسترسی

                        </h1>
                        <p className="lead">
                            شما اجازه دسترسی به این بخش را ندارید.
                        </p>
                        <hr />
                        <button
                            className="btn btn-primary mt-3"
                            onClick={() => window.location.href = "/"}
                        >
                            بازگشت به صفحه اصلی
                        </button>
                    </div>
                </div>
            </div>
        );
    }
}
