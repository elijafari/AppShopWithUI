import React from 'react';
import "bootstrap/dist/css/bootstrap.rtl.min.css";
import { useNavigate } from "react-router-dom";
export function ButtonRoute(props) {
  
  let navigate = useNavigate(); 
  const goPage = (path) =>{ 
    navigate(path);
  }
  return (
    
    <button
    type="button"
    className={props.className}
    onClick={()=>goPage(props.link)}
              >
       {props.title}
          </button>
  );
}