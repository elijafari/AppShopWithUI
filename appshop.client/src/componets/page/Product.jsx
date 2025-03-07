import React, { Component } from "react";
import axios from "axios";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {
    NotificationContainer,
    NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import { TextBox } from "../tools/TextBox";
import DropdownApp from "../tools/DropdownApp";
import { ChangeRoute, GetLocalhostServer } from "../tools/ChangeRoute";
import { Checkbox } from "../tools/CheckBox";

export class Product extends Component {
    constructor(props) {
        super(props);
        this.isEdit = props.isEdit,
        this.state = {
            id: props.isEdit ? window.location.href.split("/")[4] : 0,
            cat: [],
            file: null,
            updateKeyImage: 1,
            updateKey: 1,
        };
    }
    onChangeFile(e) {
        this.setState({
            file: URL.createObjectURL(e.target.files[0]),
            fileData: e.target.files[0],
            updateKeyImage: this.state.updateKeyImage + 1,
        });
    }
    componentDidMount() {
        this.setState({
            loading: false,
        });
        var someUrl = GetLocalhostServer("api/category/GetAll");
        axios.get(someUrl).then((response) => {
            var cat = [];
            response.data.forEach((element) => {
                cat.push({ title: element.name, value: element.id });
            });
            this.setState({ cat });
        });
        if (this.state.id != null) {
            someUrl = GetLocalhostServer("api/product/GetById?id=" + this.state.id);
            axios.get(someUrl).then((response) => {
                this.setState({
                    code: response.data.code,
                    name: response.data.name,
                    price: response.data.price,
                    categoryId: response.data.categoryId,
                    description: response.data.description,
                    file: "data:image/png;base64," + response.data.image,
                    isActive: response.data.isActive,
                    updateKey: this.state.updateKey + 1,
                });
            });
        }
    }
    AddData() {
        if (this.isEdit == false && this.state.fileData == undefined) {
            NotificationManager.error("فایل انتخاب نشده است", "خطا");
            return;
        }

        const someUrl = this.isEdit ? GetLocalhostServer("api/product/update") : GetLocalhostServer("api/product/add");

        const formData = new FormData();
        if (this.state.fileData != undefined)
            formData.append("file", this.state.fileData);

        formData.append("code", this.state.code);
        formData.append("name", this.state.name);
        formData.append("price", this.state.price);
        formData.append("description", this.state.description);
        formData.append("id", this.state.id);
        formData.append("categoryId", this.state.categoryId);
        formData.append("isActive", this.state.isActive);
        axios
            .post(someUrl, formData, {
                headers: {
                    "content-type": "multipart/form-data",
                },
            })
            .then((response) => {
                if (response.status === 200) {
                    if (this.isEdit) {
                        NotificationManager.success("اطلاعات با موفقیت ویرایش شد", "پیام");
                        ChangeRoute("/productList");
                    } else {
                        NotificationManager.success("اطلاعات با موفقیت ثبت شد", "پیام");
                        this.setState({
                            code: null,
                            name: null,
                            price: null,
                            discription: null,
                            file: [],
                            updateKey: this.state.updateKey + 1,
                        });
                    }
                } else {
                    NotificationManager.error("خطای سیستمی رخ داده است", "خطا");
                }
            })
            .catch((error) => {
                NotificationManager.error(error.response.data, "خطا");
            });
    }
    render() {
        return (
            <>
                <div className="card">
                    <h5 className="card-header">
                        {this.isEdit ? "ویرایش کالا" : "تعریف کالا"}
                    </h5>
                    <div className="card-body">
                        <div className="row">
                            <TextBox
                                context={this}
                                title="کد کالا"
                                name="code"
                                className="col-md-4 col-sm-12"
                                updateKey={this.state.updateKey}
                            />
                            <TextBox
                                context={this}
                                title="نام کالا"
                                name="name"
                                className="col-md-4 col-sm-12"
                                updateKey={this.state.updateKey}
                            />
                            <DropdownApp
                                context={this}
                                name="categoryId"
                                title="گروه کالا"
                                className="col-md-4 col-sm-12"
                                data={this.state.cat}
                            />
                            <TextBox
                                context={this}
                                title="قیمت"
                                name="price"
                                className="col-md-4 col-sm-12"
                                type="number"
                                updateKey={this.state.updateKey}
                            />
                            <Checkbox
                                context={this}
                                title="فعال"
                                name="isActive"
                                className="col-md-1 col-sm-12"
                                updateKey={this.state.updateKey}
                            />
                            <TextBox
                                context={this}
                                title="توضیحات"
                                name="description"
                                className="col-md-12 col-sm-12"
                                updateKey={this.state.updateKey}
                            />

                            <div className="input-group mb-3">
                                <div className="custom-file">
                                    <label >عکس مربوطه</label>
                                    <img
                                        src={this.state.file}
                                        width={200}
                                        height={200}
                                        className="img-fluid img-thumbnail"
                                    />
                                    <input
                                        type="file"
                                        className="custom-file-input"
                                        onChange={(e) => this.onChangeFile(e)}
                                        key={this.state.updateKey}
                                    />
                                </div>
                            </div>
                        </div>
                        <button onClick={() => this.AddData()} className="btn btn-primary">
                            ثبت
                        </button>
                        <button onClick={() => this.AddData()} className="btn btn-light leftBtn">
                         بازگشت
                        </button>
                    </div>
                </div>

                <NotificationContainer />
            </>
        );
    }
}
