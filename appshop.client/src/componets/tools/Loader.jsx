import React from "react";

const Loader = () => {
  return (
    <div className="text-center my-3">
      <div className="spinner-border text-primary" role="status">
        <span className="visually-hidden">در حال بارگذاری...</span>
      </div>
    </div>
  );
};

export default Loader;