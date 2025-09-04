import React from "react";
export class Checkbox extends React.Component {
  constructor(props) {
    super(props);
  }
  componentDidMount() {
    var value = false;
    try {
      var value = this.props.context.state[this.props.name];
    }
    catch { }
    this.props.context.setState({ [this.props.name]: value });
  }
  handleInputChange = (e) => {
    this.props.context.setState({ [this.props.name]: e.target.checked });
  };
  render() {
    return (
      <>
        <div className={"form-check form-switch " + this.props.className} >
          <label className="form-check-label">
            {this.props.title}
          </label>
          <input
            className="form-check-input"
            type="checkbox"
            id="flexSwitchCheckChecked"
            checked={this.props.context.state[this.props.name]}
            readOnly={false}
            onChange={(e) => this.handleInputChange(e)}
            key={this.props.name + this.props.updateKey}
          />
        </div>
      </>
    );
  }
}
