import React from "react";
import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import '../../App.css';
import { LuRefreshCw } from "react-icons/lu";
import api from "../tools/axiosConfig";
export class Capcha extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      url: "",
    };
  }
  componentDidMount() {
    this.loadCaptcha();
  }
  loadCaptcha() {
    api.get("/Captcha/Generate").then((response) => {
      this.setState({
        url: response.data.dntCaptchaImgUrl
      })
      this.props.sentCapcha(response.data);
    })
  }
  render() {
    return (
      <>
        <img
          src={this.state.url}
          alt="captcha"
          style={{ width: "150px", height: "55px", objectFit: "contain" }}
        />
        <LuRefreshCw
          className="text-primary"
          style={{ cursor: "pointer" }}
          onClick={() => this.loadCaptcha()} />
      </>
    );
  }
}
