import React, { useState, useEffect } from "react";

export function ProductAttributes(props) {
    const [attributes, setAttributes] = useState([{ key: "", value: "" }]);

    useEffect(() => {
        const value = props.context.state[props.name];
        if (!value) return;
        try {
            const parsed =value;

if (Array.isArray(parsed) && parsed.length > 0) {
                setAttributes(parsed);
            
            }
        } catch (err) {
            console.error("Invalid attributes json:", err);
        }
    }, [props.context.state[props.name]]);

    const handleChange = (index, field, value) => {
        const updated = [...attributes];
        updated[index][field] = value;

        setAttributes(updated);
        props.context.setState({ [props.name]: updated });
    };

    const addAttribute = () => {
        const updated = [...attributes, { key: "", value: "" }];

        setAttributes(updated);
        props.context.setState({ [props.name]: updated });
    };

    const removeAttribute = (index) => {
        const updated = attributes.filter((_, i) => i !== index);

        setAttributes(updated);
        props.context.setState({ [props.name]: updated });
    };

    return (
        <div>
            <label >ویژگی های کالا (رنگ ، جنس ، انداره و ...)</label>
            <div className="card shadow-sm">
                <div className="card-body">
                    {attributes.map((item, index) => (
                        <div key={index} className="row g-2 align-items-center mb-3">
                            <div className="col-md-5">
                                <input
                                    type="text"
                                    className="form-control"
                                    placeholder="نام ویژگی"
                                    value={item.key}
                                    onChange={(e) =>
                                        handleChange(index, "key", e.target.value)
                                    }
                                />
                            </div>

                            <div className="col-md-5">
                                <input
                                    type="text"
                                    className="form-control"
                                    placeholder="مقدار"
                                    value={item.value}
                                    onChange={(e) =>
                                        handleChange(index, "value", e.target.value)
                                    }
                                />
                            </div>

                            <div className="col-md-2 text-center">
                                <button
                                    type="button"
                                    className="btn btn-danger"
                                    onClick={() => removeAttribute(index)}
                                >
                                    <i className="bi bi-trash"></i>
                                </button>
                            </div>
                        </div>
                    ))}

                    <button
                        type="button"
                        className="btn btn-success"
                        onClick={addAttribute}
                    >
                        <i className="bi bi-plus-lg me-1"></i>
                        افزودن ویژگی
                    </button>
                </div>
            </div>
        </div>
    );
}