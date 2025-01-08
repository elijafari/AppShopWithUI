import "bootstrap/dist/css/bootstrap.rtl.min.css";
export default function DropdownApp(props) {
  
  const handleChange=(e)=>{
     props.context.setState({ [props.name]: e.target.value });
   };
  return (
  
    <div className="col-md-2 col-sm-12 form-group">
          <span>{props.title}</span>
      <select
      className="form-select form-select-sm" aria-label=".form-select-sm example"
        onChange={(e) => handleChange(e)}
        value={props.context.state[props.name]}
      >
        {props.data.map((x, index) => (
          <option key={index} value={x.value}>{x.title}</option>
        ))}
      </select>
  
    </div>
)
}