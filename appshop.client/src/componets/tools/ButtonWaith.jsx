import React from "react";
export  function ButtonWaith(props) {
  return (
  <button
              onClick={()=>props.onClick()}
          className={props.className ==null ?"btn btn-success mt-2 w-10":props.className}
                        disabled={props.loading}
            >
              {props.loading ? (
                <>
                  <span
                    className="spinner-border spinner-border-sm me-2"
                    role="status"
                    aria-hidden="true"
                  ></span>
                لطفا منتظر بمانید...
                </>
              ) : props.title}
            </button>
  );
};