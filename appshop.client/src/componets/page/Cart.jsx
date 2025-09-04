import { Component } from "react";
import { TextBox } from "../tools/TextBox";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import "../../App.css";
import DropdownApp from "../tools/DropdownApp";
export class Cart extends Component {
  constructor(props) {
    super(props);
    this.state = {
      data: [],
      sumPrice: 0,
      updateKey: 1,
      user: {},
      address: {},
      days: [
        { title: "شنبه 1403/08/01" },
        { title: "شنبه 1403/08/02" },
        { title: "شنبه 1403/08/03" },
        { title: "شنبه 1403/08/04" },
        { title: "شنبه 1403/08/05" },
        { title: "شنبه 1403/08/06" },
        { title: "شنبه 1403/08/07" },
      ],
    };
    this.header = [
      "ردیف",
      "نام محصول",
      "قیمت واحد تومان",
      "تعداد",
      "قیمت کل  تومان",
      "",
      "",
    ];
  }
  componentDidMount() {
    let data = JSON.parse(localStorage.getItem("selectedItem"));
    let user = JSON.parse(localStorage.getItem("user"));
    debugger;
    this.setState({
      user: user,
      address: user.address,
    });
    this.refreshTable(data);
  }
  add(i) {
    let data = this.state.data;
    data[i].count = data[i].count + 1;
    this.refreshTable(data);
  }
  remove(i) {
    let data = this.state.data;
    data[i].count = data[i].count - 1;
    if (data[i].count === 0) data.splice(i, 1);
    this.refreshTable(data);
  }
  refreshTable(data) {
    let sumPrice = 0;
    data.forEach((element) => {
      sumPrice += element.data.price;
    });

    this.setState({
      sumPrice,
      data: data,
      updateKey: this.state.updateKey + 1,
    });
    localStorage.setItem("selectedItem", JSON.stringify(data));
  }
  onView(e) {
       window.location.href ="/productView/" + e.id;
  }
  render() {
    return (
      <>
       <div className="card">
          <h5 className="card-header">سبد خرید          </h5>
        <table className="table table-striped">
          <thead>
            <tr>
              {this.header.map((x) => (
                <th scope="col">{x}</th>
              ))}
            </tr>
          </thead>
          <tbody key={this.state.updateKey}>
            {this.state.data.map((x, i) => (
              <>
                <tr>
                  <th scope="row">{i + 1}</th>
                  <td>{x.data.name}</td>
                  <td>{x.data.price.toLocaleString()}</td>
                  <td>{x.count}</td>
                  <td>{(x.count * x.data.price).toLocaleString()}</td>
                  <td>
                    <button
                      type="button"
                      className="btn btn-success marginApp"
                      onClick={() => this.add(i)}
                    >
                      +
                    </button>
                    {}
                    {x.count > 0 && (
                      <button
                        type="button"
                        className="btn btn-success"
                        onClick={() => this.remove(i)}
                      >
                        -
                      </button>
                    )}
                  </td>
                  <td>
                    {" "}
                    <button type="button" className="btn btn-info"    onClick={() => this.onView(x)}>
                      اطلاعات بیشتر
                    </button>
                  </td>
                </tr>
              </>
            ))}

            <tr>
              <td colSpan={4}>جمع</td>
              <td className="rowSum">{this.state.sumPrice.toLocaleString()}</td>
              <td colSpan={2}></td>
            </tr>
          </tbody>
        </table>
        <TextBox
          context={this}
          title="آدرس"
          name="address"
          colMd="col-md-12"
          readOnly={true}
        />
        <br />
        <div className="col-md-2">
          <button type="button" className="btn btn-info">
            تغییر آدرس
          </button>
        </div>
        <br />
        <DropdownApp title="انتخاب روز دریافت سفارش"
        
        context={this}
        name="categoryId"
        data={this.state.days} />

        <br />
        <div className="col-md-2">
          <button type="button" className="btn btn-success">
      ثبت سفارش
          </button>
        </div>
        </div>
      </>
    );
  }
}
