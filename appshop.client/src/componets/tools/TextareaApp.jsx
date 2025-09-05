import React from "react";
export class TextareaApp extends React.Component {
  constructor(props) {
    super(props);
  }
  componentDidMount() {
    this.props.context.setState({ [this.props.name]: "" });
  }
  handleInputChange = (e) => {
    var value = e.target.value;
    this.props.context.setState({ [e.target.name]: value });
  };
  render() {
    return (
      <>
        <div className={this.props.className}>
          <label>{this.props.title}</label>
          <textarea
            name={this.props.name}
            value={this.props.context.state[this.props.name]}
            type="text"
            required
            readOnly={false}
            onChange={(e) => this.handleInputChange(e)}
            className="form-control"
            style={{ textAlign: "right" }}
            key={this.props.name + this.props.updateKey}
          />
        </div>
      </>
    );
  }
}
