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
import { Checkbox } from "../tools/CheckBox";
import { ErrorHanding, toEnglishDigits, normalizePrice, validInput } from "../Utility";
import { ButtonWaith } from "../tools/ButtonWaith";
import { ButtonReturn } from "../tools/ButtonReturn";
import { TextareaApp } from "../tools/TextareaApp";
import { ProductAttributes } from '../tools/ProductAttributes';
import { stringify } from "postcss";

export class Product extends React.Component {
    constructor(props) {
        super(props);
        this.isEdit = props.isEdit;
        this.state = {
            id: props.isEdit ? window.location.href.split("/")[4] : 0,
            cat: [],
            files: [],
            filePreviews: [],
            isActive: true,
            updateKeyImage: 1,
            updateKey: 1,
            updateKeyIsmain: 1,
            indexMain: 0
        };
    }

    onChangeFile(e) {
        const newFiles = Array.from(e.target.files);
        const previews = this.state.filePreviews;
        newFiles.map(file => previews.push(URL.createObjectURL(file)));

        var files = this.state.files;
        newFiles.map(x => files.push(x));

        this.setState({
            files,
            filePreviews: previews,
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
                var filePreviews = [];
                for (let index = 0; index < result.pathImags.length; index++)
                    filePreviews.push(import.meta.env.VITE_API_URL + result.pathImags[index]);

                this.setState({
                    ...result,
                    price: result.price.toLocaleString("fa-IR"),
                    filePreviews: filePreviews,
                    updateKey: this.state.updateKey + 1,
                    [`isMain${result.indexMain}`]: true,
                    updateKeyIsmain: this.state.updateKeyIsmain + 1
                });

            });
        }
    }

    AddData() {
        debugger
        if (this.isEdit == false && this.state.files.length === 0) {
            NotificationManager.error("فایل انتخاب نشده است", "خطا");
            return;
        }
        if (!validInput(NotificationManager, this.state.code, "کد"))
            return;
        if (!validInput(NotificationManager, this.state.name, "نام"))
            return;
        if (!validInput(NotificationManager, this.state.price, "قیمت"))
            return;
        if (!validInput(NotificationManager, this.state.description, "توضیحات"))
            return;

        const formData = new FormData();
        if (this.state.files.length > 0) {
            this.state.files.forEach((file) => {
                formData.append("files", file);
            });
        }
        if (this.isEdit) {
            if (this.state.filePreviews.length > 0) {
                this.state.filePreviews.forEach((file) => {
                    formData.append("oldFiles", file);
                });
            }
        }
        else
            formData.append("oldFiles", "");

        formData.append("code", this.state.code);
        formData.append("name", this.state.name);
        formData.append("price", normalizePrice(toEnglishDigits(this.state.price)));
        formData.append("description", this.state.description);
        formData.append("description2", this.state.description2);
        formData.append("id", this.state.id);
        formData.append("categoryId", this.state.categoryId);
        formData.append("isActive", this.state.isActive);
        formData.append("indexMain", this.state.indexMain);
        formData.append("feature",JSON.stringify(this.state.feature));
        this.setState({ loading: true });
        api.post(this.isEdit ? "/product/update" : "/product/add", formData, { isMultipart: true })
            .then((res) => {
                this.setState({ loading: false });
                if (res.status === 200) {
                    NotificationManager.success(res.data.message, "پیام");
                    setTimeout(() => {
                        if (this.isEdit)
                            window.location.href = "/productList";
                        else
                            this.clearInput();
                    }, 1000)

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
            files: [],
            filePreviews: [],
            updateKey: this.state.updateKey + 1,
        });
    }

    // متد حذف عکس
    removeImage(index) {
        const newFiles = [...this.state.files];
        const newPreviews = [...this.state.filePreviews];
        newFiles.splice(index, 1);
        newPreviews.splice(index, 1);

        if (this.state.indexMain > index) {
            for (let index = 0; index < this.state.filePreviews.length; index++) {
                var tag = index == 0;
                this.setState({
                    [`isMain${index}`]: tag
                    , updateKeyIsmain: this.state.updateKeyIsmain + 1
                })
            }
            this.setState({ indexMain: 0 })
        }
        this.setState({ files: newFiles, filePreviews: newPreviews });

    }

    isChangeMainImage(i) {
        for (let index = 0; index < this.state.filePreviews.length; index++) {
            var tag = index == i;
            this.setState({
                [`isMain${index}`]: tag
                , updateKeyIsmain: this.state.updateKeyIsmain + 1
            })
        }
        this.setState({ indexMain: i })
    }

    render() {
        return (
            <>
                <div className="card">
                    <p className="card-header">
                        {this.isEdit ? "ویرایش کالا" : "تعریف کالا"}
                    </p>
                    <div className="card-body row">
                        <TextBox
                            context={this}
                            title="کد کالا"
                            name="code"
                            type="number"
                            className="col-md-3 col-sm-12"
                            updateKey={this.state.updateKey}
                        />
                        <TextBox
                            context={this}
                            title="نام کالا"
                            name="name"
                            className="col-md-6 col-sm-12"
                            updateKey={this.state.updateKey}
                        />
                        <DropdownApp
                            context={this}
                            name="categoryId"
                            title="گروه کالا"
                            className="col-md-3 col-sm-12"
                            data={this.state.cat}
                        />
                        <TextBox
                            context={this}
                            title="قیمت (تومان)"
                            name="price"
                            className="col-md-3 col-sm-12"
                            type="number"
                            updateKey={this.state.updateKey}
                            separator={true}
                            maxLength={13}
                        />
                        <div className="col-md-3 col-sm-12 d-flex align-items-center">
                            <Checkbox
                                context={this}
                                title="موجود"
                                name="isActive"
                                updateKey={this.state.updateKey}
                            />
                        </div>
                        <TextareaApp
                            context={this}
                            title="توضیحات اولیه"
                            name="description"
                            className="col-md-12 col-sm-12"
                            updateKey={this.state.updateKey}
                            style={{ height: '300px', textAlign: 'right' }}
                        />
                        <ProductAttributes
                            context={this}
                            name="feature" />

                        <TextareaApp
                            context={this}
                            title="توضیحات پایانی"
                            name="description2"
                            className="col-md-12 col-sm-12"
                            updateKey={this.state.updateKey}
                            style={{ height: '300px', textAlign: 'right' }}
                        />
                        <div className="mt-2 col-md-6 col-sm-12">
                            <div className="custom-file">
                                <input
                                    type="file"
                                    className="custom-file-input"
                                    onChange={(e) => this.onChangeFile(e)}
                                    key={this.state.updateKeyImage}
                                    multiple
                                />
                            </div>
                        </div>
                        <div className="row">
                            {this.state.filePreviews.map((src, i) => (
                                <div key={i} className="col-4 d-flex flex-column align-items-center mb-4">
                                    <img
                                        src={src}
                                        width={200}
                                        height={200}
                                        className="img-fluid img-thumbnail mb-2 shadow-sm"
                                        alt={`preview-${i}`}
                                    />
                                    <Checkbox
                                        context={this}
                                        title="بعنوان عکس اصلی"
                                        name={`isMain${i}`}
                                        onChange={(e) => this.isChangeMainImage(i)}
                                        updateKey={`isMain${i}${this.state.updateKeyIsmain}`}
                                    />
                                    <button
                                        className="btn btn-outline-danger btn-sm"
                                        onClick={() => this.removeImage(i)}
                                        style={{ fontFamily: 'Vazirmatn' }}
                                    >
                                        حذف
                                    </button>
                                </div>
                            ))}
                        </div>
                    </div>

                    <div className="col-12 d-flex justify-content-start mt-3">
                        <ButtonWaith
                            onClick={() => this.AddData()}
                            loading={this.state.loading}
                            title="ثبت"
                        />
                        <ButtonReturn />
                    </div>
                </div>
                <NotificationContainer />
            </>
        );
    }
}
