import { useNavigate } from "react-router-dom";
import axios from "axios";
import "bootstrap/dist/css/bootstrap.rtl.min.css";
import "../../node_modules/bootstrap/dist/css/bootstrap.min.css";
import {
  NotificationContainer,
  NotificationManager,
} from "react-notifications";
import "react-notifications/lib/notifications.css";


export function ButtonCallApi(props) {
  let navigate = useNavigate();
  const goPage = (path) => {
    navigate(path);
  };

  const AddData =() => {
    const someUrl = "https://localhost:7023/" +props. url;
    axios
      .post(someUrl, props.data)
      .then((response) => {
        if (response.status === 200) {
          debugger
          NotificationManager.success("اطلاعات با موفقیت ثبت شد", "پیام");
          if (props.keyStorage != null)
            localStorage.setItem(props.keyStorage, JSON.stringify(props.data));
      //    if (props.path != null) goPage(props.path);
        } else {
          NotificationManager.error("خطای سیستمی رخ داده است", "خطا");
        }
      })
      .catch((error) => {
        NotificationManager.error(error.response.data, "خطا");
      });
  }
  return  (
    <>
        <button
    type="button"
    className={props.className}
    onClick={()=>AddData()}
              >
       {props.title}
          </button>
    <NotificationContainer />
    </>
  );
}
