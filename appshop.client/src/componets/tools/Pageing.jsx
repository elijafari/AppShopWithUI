import React from "react";
import "bootstrap/dist/css/bootstrap.rtl.min.css";
import "../../App.css";

export class Pageing extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      updateKey: 1,
      current: this.props.currentPage,

    };
    this.pageCount = [];
  }
  componentDidMount() {
    this.pageCount = [];
    for (let index = 0; index < this.props.pageCount; index++)
      this.pageCount.push(index + 1);

    this.setState(
      {
        updateKey:this.state.updateKey+1
      }
    )
  }
  onChangePage = (e) => {
    this.props.onChangePage(e);
  };
  render() {
    return (
      <div className="row borderPaging" key={this.props.updateKey+this.state.updateKey}>
        <div className="col-md-10">
          <nav aria-label="...">
            <ul className="pagination">
              {this.pageCount.map((x) =>
                x < 11 ? (
                  <li style={{cursor:"pointer"}}
                    className={
                      x === this.props.currentPage ? "page-item active" : "page-item"
                    }
                    key={"li" + x}
                  >
                    <a
                    style={{cursor:"pointer"}}
                      className="page-link"
                      key={"a" + x}
                      onClick={() => this.onChangePage(x)}
                    >
                      {x}
                    </a>
                  </li>
                ) : (
                  ""
                )
              )}
            </ul>
          </nav>
        </div>
        <div className="col-md-2">
          <span>تعداد کل : {this.props.totalCount}</span>
        </div>
      </div>
    );
  }
}
