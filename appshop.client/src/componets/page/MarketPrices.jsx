import React from "react";
import api from "../tools/axiosConfig";

export class MarketPrices extends React.Component {

  constructor(props) {
    super(props);

    this.state = {
      loading: true,
      error: null,

      gold18: 0,
      gold24: 0,
      dollar: 0,
      emamiCoin: 0,
      halfCoin: 0,
      quarterCoin: 0,

      numGold18: 0,
      numGold24: 0,
      numDollar: 0,
      numEmamiCoin: 0,
      numHalfCoin: 0,
      numQuarterCoin: 0,

      totalGold18: 0,
      totalGold24: 0,
      totalDollar: 0,
      totalEmamiCoin: 0,
      totalHalfCoin: 0,
      totalQuarterCoin: 0,

      sum: 0
    };
  }


  componentDidMount() {
    this.getPrices();
  }


  getPrices = () => {

    this.setState({
      loading: true,
      error: null
    });

    api.get("/tala/get")
      .then((response) => {

        this.setState({
          ...response.data,
          loading: false
        });

      })
      .catch((error) => {

        this.setState({
          loading: false,
          error: "خطا در دریافت قیمت‌ها"
        });

        console.error(error);

      });

  };


  formatPrice = (value) => {

    if (value === null || value === undefined) {
      return "-";
    }

    return Number(value).toLocaleString("fa-IR");
  };


  renderRow = (
    title,
    price,
    quantity,
    total
  ) => {

    return (

      <tr>

        <td className="text-end">
          {title}
        </td>

        <td>
          {this.formatPrice(price)}
        </td>

        <td>
          {this.formatPrice(quantity)}
        </td>

        <td className="fw-bold">
          {this.formatPrice(total)}
        </td>

      </tr>

    );

  };


  render() {

    const {
      loading,
      error
    } = this.state;


    if (loading) {

      return (

        <div className="text-center p-4">
          در حال دریافت قیمت‌ها...
        </div>

      );

    }


    if (error) {

      return (

        <div className="alert alert-danger">
          {error}
        </div>

      );

    }


    return (

      <div
        className="container mt-4"
        dir="rtl"
      >

        <div className="d-flex justify-content-between align-items-center mb-4">

          <h4 className="mb-0">
            ارزش دارایی‌ها بر اساس قیمت روز
          </h4>


          <button
            className="btn btn-primary"
            onClick={this.getPrices}
          >

            بروزرسانی قیمت‌ها

          </button>

        </div>


        <div className="table-responsive">

          <table className="table table-bordered table-hover align-middle text-center">

            <thead className="table-light">

              <tr>

                <th>
                  عنوان
                </th>

                <th>
                  قیمت روز
                </th>

                <th>
                  تعداد
                </th>

                <th>
                  قیمت کل
                </th>

              </tr>

            </thead>


            <tbody>

              {this.renderRow(
                "طلای ۱۸ عیار",
                this.state.gold18,
                this.state.numGold18,
                this.state.totalGold18
              )}


              {this.renderRow(
                "طلای ۲۴ عیار",
                this.state.gold24,
                this.state.numGold24,
                this.state.totalGold24
              )}


              {this.renderRow(
                "دلار آمریکا",
                this.state.dollar,
                this.state.numDollar,
                this.state.totalDollar
              )}


              {this.renderRow(
                "سکه امامی",
                this.state.emamiCoin,
                this.state.numEmamiCoin,
                this.state.totalEmamiCoin
              )}


              {this.renderRow(
                "نیم سکه",
                this.state.halfCoin,
                this.state.numHalfCoin,
                this.state.totalHalfCoin
              )}


              {this.renderRow(
                "ربع سکه",
                this.state.quarterCoin,
                this.state.numQuarterCoin,
                this.state.totalQuarterCoin
              )}

            </tbody>


            <tfoot>

              <tr className="table-primary">

                <th
                  colSpan="3"
                  className="text-end"
                >
                  جمع کل دارایی
                </th>


                <th className="fs-5">

                  {this.formatPrice(
                    this.state.sum
                  )}

                  <small className="me-2">
                    تومان
                  </small>

                </th>

              </tr>

            </tfoot>

          </table>

        </div>

      </div>

    );

  }

}