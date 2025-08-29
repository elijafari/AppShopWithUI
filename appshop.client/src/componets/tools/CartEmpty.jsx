export  function CartEmpty() {
  return (

            <div className="container my-5">
  <div className="row justify-content-center">
    <div className="col-md-8">
      <div className="card shadow-lg border-0 text-center p-4">
    
        <div className="mb-4">
          <i className="bi bi-error-circle-fill text-danger" style={{ fontSize: "4rem" }}></i>
        </div>

        {/* پیام */}
        <h4 className="fw-bold text-danger mb-3">
          سبد خرید شما خالی است
        </h4>

        {/* دکمه‌ها */}
        <div className="d-flex justify-content-center gap-3 mt-4">
          <button className="btn btn-outline-primary" onClick={() => window.location.href = "/" }   >
            بازگشت به صفحه اصلی
          </button>
        </div>
      </div>
    </div>
  </div>
</div>
  );
};