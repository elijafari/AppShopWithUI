import React, { Component } from "react";
import api from "../tools/axiosConfig";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {
    NotificationContainer,
    NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";
import "../../App.css";
import { TextBox } from "../tools/TextBox";
import { DropdownApp } from "../tools/DropdownApp";
import { Checkbox } from "../tools/CheckBox";
import { ErrorHanding, toEnglishDigits,normalizePrice } from "../Utility";
import { ButtonWaith } from "../tools/ButtonWaith";
import { ButtonReturn } from "../tools/ButtonReturn";

export class Product extends Component {
    constructor(props) {
        super(props);
        this.isEdit = props.isEdit,
            this.state = {
                id: props.isEdit ? window.location.href.split("/")[4] : 0,
                cat: [],
                file: null,
                isActive: true,
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
        api.get("/category/GetAll").then((response) => {
            var cat = [];
            response.data.data.forEach((element) => {
                cat.push({ title: element.name, value: element.id });
            });
            this.setState({ cat });
        });
        if (this.isEdit) {
            api.post("product/GetById", { id: this.state.id }).then((response) => {
                var result = response.data.data;
                this.setState({
                    ...result,
                    price:result.price.toLocaleString("fa-IR"),
                    file: "data:image/png;base64," + result.image,
                    updateKey: this.state.updateKey + 1,
                });
            });
        }
    }
    validInput(input, title) {

        if (input == "" || input == undefined || input == null) {
            NotificationManager.error(title + " وارد نشده است ", "خطا");
            return false;
        }
        return true;
    }

    AddData() {
        if (this.isEdit == false && this.state.fileData == undefined) {
            NotificationManager.error("فایل انتخاب نشده است", "خطا");
            return;
        }
        if (!this.validInput(this.state.code, "کد"))
            return;
        if (!this.validInput(this.state.name, "نام"))
            return;
        if (!this.validInput(this.state.price, "قیمت"))
            return;
        if (!this.validInput(this.state.description, "توضیحات"))
            return;

        const formData = new FormData();
        if (this.state.fileData != undefined)
            formData.append("file", this.state.fileData);

        debugger
        formData.append("code", this.state.code);
        formData.append("name", this.state.name);
        formData.append("price",normalizePrice( toEnglishDigits(this.state.price)));
        formData.append("description", this.state.description);
        formData.append("id", this.state.id);
        formData.append("categoryId", this.state.categoryId);
        formData.append("isActive", this.state.isActive);

        this.setState({ loading: true });
        api.post(this.isEdit ? "/product/update" : "/product/add", formData, { isMultipart: true })
            .then((res) => {
                this.setState({ loading: false });
                if (res.status === 200) {
                    NotificationManager.success(res.data.message, "پیام");
                    if (this.isEdit)
                        window.location.href = "/productList";
                    else
                        this.clearInput();
                } else
                    ErrorHanding(NotificationManager, res.data.message);
            })
            .catch((error) => {
                ErrorHanding(NotificationManager, error);
                this.setState({ loading: false });
            });
    }
    clearInput() {
        this.setState({
            code: null,
            name: null,
            price: null,
            description: null,
            file: [],
            updateKey: this.state.updateKey + 1,
        });
    }
    render() {
        return (
            <>
                <div className="card">
                    <p className="card-header">
                        {this.isEdit ? "ویرایش کالا" : "تعریف کالا"}
                    </p>
                    <div className="card-body">
                        <div className="row">
                            <TextBox
                                context={this}
                                title="کد کالا"
                                name="code"
                                type="number"
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
                            <div className="form-outline mb-3">
                                <div className="row align-items-center">
                                    <div className="col-md-4 col-sm-12 d-flex align-items-center">
                                        <TextBox
                                            context={this}
                                            title="قیمت"
                                            name="price"
                                            className="col-md-11 col-sm-12"
                                            type="number"
                                            updateKey={this.state.updateKey}
                                            separator={true}
                                            maxLength={13}
                                        />
                                        <span className="ms-2">تومان</span>
                                    </div>

                                    <div className="col-md-2 col-sm-12 d-flex align-items-center">
                                        <Checkbox
                                            context={this}
                                            title="موجود"
                                            name="isActive"
                                            updateKey={this.state.updateKey}
                                        />
                                    </div>
                                </div>
                            </div>

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
                        <ButtonWaith onClick={() => this.AddData()}
                            loading={this.state.loading}
                            title="ثبت" />
                        <ButtonReturn />
                    </div>
                </div >

                <NotificationContainer />
            </>
        );
    }
}
