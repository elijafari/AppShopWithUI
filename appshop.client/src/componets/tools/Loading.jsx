import "../../../node_modules/bootstrap/dist/css/bootstrap.min.css";
export function Loading()
{
    return(
        <div className="d-flex flex-column justify-content-center align-items-center mt-5">
            <div
                className="spinner-border text-primary mb-3"
                role="status"
                style={{ width: "3rem", height: "3rem" }}
            >
                <span className="visually-hidden">Loading...</span>
            </div>
                        <p className="fw-semibold text-muted">⏳ در حال بارگذاری...</p>
        </div>
    );
}