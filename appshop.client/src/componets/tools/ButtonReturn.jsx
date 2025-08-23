
export function ButtonReturn() {

  const onClick = () => {
    window.location.href = "/";
  };
  return (
    <button
      onClick={() => onClick()} className="btn btn-light leftBtn">
      بازگشت
    </button>
  );
};