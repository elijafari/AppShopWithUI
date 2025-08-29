export function Address(props) {
  return (
    <div className="table-responsive">
      <table className="table table-bordered table-striped text-center align-middle">
        <thead className="table-dark">
          <tr>
            {props.showSelected &&(
            <th></th>)}
            <th>شهر</th>
            <th>کد پستی</th>
            <th>آدرس</th>
          </tr>
        </thead>
        <tbody>
          { props.data &&props.data.map((x, index) => (
            <tr key={index}>
                   {props.showSelected &&(  <td>
                <button
                  className="btn btn-sm btn-info"
                  onClick={() => this.selectAddress(x)}
                >
                  انتخاب
                </button>
              </td>)}
              <td>{x.city}</td>
              <td>{x.postalCode}</td>
              <td>{x.addressStr}</td>
            </tr>
          ))}
        </tbody>
      </table>
    </div>
  );
};