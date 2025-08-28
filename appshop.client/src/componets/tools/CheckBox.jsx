import React from "react";
import '../../App.css';

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
<div className="custom-switch ">
  <label htmlFor={this.props.name}>
    {this.props.title}
  </label>
  <input
    type="checkbox"
    id={this.props.name}
    checked={this.props.context.state[this.props.name]}
    onChange={(e) => this.handleInputChange(e)}
  />
</div>

    );
  }
}
