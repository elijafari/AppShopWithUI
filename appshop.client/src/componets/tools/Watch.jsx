import React from "react";
export default class Watch extends React.Component {
  constructor(props) {
    super(props);
    this.state = { dateTime: new Date() };
  }

  componentDidMount() {
    this.timer = setInterval(() => {
      this.setState({ dateTime: new Date() });
    }, 1000);
  }

  componentWillUnmount() {
    clearInterval(this.timer);
  }

  render() {
    const { dateTime } = this.state;

    const options = { weekday: 'long', year: 'numeric', month: 'long', day: 'numeric' };
    const dateStr = dateTime.toLocaleDateString('fa-IR', options);
    const timeStr = dateTime.toLocaleTimeString('fa-IR',{
  hour: '2-digit',
  minute: '2-digit'
}); 

    return (
          <>
          {/* تاریخ و ساعت */}
        <div className="col-auto small text-black-200 mt-2">
            ⏰ {timeStr} | 📅 {dateStr}
          </div>
          </>
    );
  }
}
