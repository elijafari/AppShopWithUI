
export function ButtonReturn() {

  const onClick = () => {
    window.location.href = "/";
  };
  return (
    <button
      onClick={() => onClick()} className="btn btn-light leftBtn mt-2">
      بازگشت
    </button>
  );
};