import "bootstrap/dist/css/bootstrap.rtl.min.css";
export function DropdownApp(props) {
  const handleChange=(e)=>{
    debugger
     props.context.setState({ [props.name]:parseInt( e.target.value) });

     if(props.onChange!=undefined)
     props.onChange( e.target);
   };
  return (
      <div className={"form-group " + props.className}  >
          <span>{props.title}</span>
      <select
      className="form-select form-select-sm" aria-label=".form-select-sm example"
        onChange={(e) => handleChange(e)}
        value={props.context.state[props.name]}
        key={props.updateKey}
      >
         <option key="-1" value="0">انتخاب کنید ...</option>
        {props.data.length>0 &&
        props.data.map((x, index) => (
          <option key={index} value={x.value}>{x.title}</option>
        ))}
      </select>
  
    </div>
)
}