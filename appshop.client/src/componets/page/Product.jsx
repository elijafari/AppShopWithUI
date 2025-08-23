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
import { ErrorHanding } from "../Utility";
import { ButtonWaith } from "../tools/ButtonWaith";
import { ButtonReturn} from "../tools/ButtonReturn";

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
            api.get("product/GetById?id=" + this.state.id).then((response) => {
                var result = response.data.data;
                this.setState({
                    ...result,
                    file: "data:image/png;base64," + result.image,
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
            discription: null,
            file: [],
            updateKey: this.state.updateKey + 1,
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
                                className="col-md-1 col-sm-1"
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
                        <ButtonWaith onClick={() => this.AddData()}
                            loading={this.state.loading}
                            title="ثبت" />
                        <ButtonReturn/>
                    </div>
                </div >

                <NotificationContainer />
            </>
        );
    }
}
