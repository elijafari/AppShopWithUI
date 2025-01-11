import React from "react";
export class TextBox extends React.Component {
  constructor(props) {
    super(props);
  }
  componentDidMount() {
    this.props.context.setState({ [this.props.name]: undefined });
  }
  handleInputChange = (e) => {
    this.props.context.setState({ [e.target.name]: e.target.value });
  };
  handleOnKeyUp = (e) => {
    if (this.props.separator)
        if( e.target.value!="")
        if( e.target.value!="Nan")
            if( e.target.value!=null)
            
            {
      var n = e.target.value.replaceAll(",", "");
      this.props.context.setState({
        [e.target.name]: parseInt(n).toLocaleString(),
      });
    }
  };
  render() {
    return (
      <>
        <div className={this.props.className}>
          <label>{this.props.title}</label>
          <input
            name={this.props.name}
            value={this.props.context.state[this.props.name]}
            type={this.props.type == "password"?this.props.type :"text" }
            required
            readOnly={false}
            onChange={(e) => this.handleInputChange(e)}
            className="form-control"
            placeholder={
              this.props.isPlaceHolder
                ? this.props.title + " را وارد کنید "
                : ""
            }
            style={{textAlign:this.props.isLeft? "left":"right"}}
            onKeyUp={(e) => this.handleOnKeyUp(e)}
            key={this.props.name + this.props.updateKey}
          />
        </div>
      </>
    );
  }
}
