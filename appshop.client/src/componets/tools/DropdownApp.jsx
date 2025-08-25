import "bootstrap/dist/css/bootstrap.rtl.min.css";
export default function DropdownApp(props) {
  
  const handleChange=(e)=>{
     props.context.setState({ [props.name]: e.target.value });
   };
  return (

      <div className={"form-group " + props.className}  >
          <span>{props.title}</span>
      <select
      className="form-select form-select-sm" aria-label=".form-select-sm example"
        onChange={(e) => handleChange(e)}
        value={props.context.state[props.name]}
      >
         <option key="-1" value="0">انتخاب کنید ...</option>
        {props.data.map((x, index) => (
          <option key={index} value={x.value}>{x.title}</option>
        ))}
      </select>
  
    </div>
)
}