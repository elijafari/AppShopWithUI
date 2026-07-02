import { Swiper, SwiperSlide } from "swiper/react";
import { Navigation, Autoplay } from "swiper/modules";
import "swiper/css";
import "swiper/css/navigation";

export function RelatedProducts({ products }) {
  return (
    <div className="mt-5">
      <h5 className="mb-3 fw-bold"
        style={{
          fontFamily: 'Vazirmatn',
        }}
      >کالاهای مشابه</h5>

      <Swiper
        modules={[Navigation, Autoplay]}
        navigation
        autoplay={{ delay: 3000 }}
        spaceBetween={15}
        breakpoints={{
          0: { slidesPerView: 2 },
          576: { slidesPerView: 2 },
          768: { slidesPerView: 3 },
          992: { slidesPerView: 4 },
          1200: { slidesPerView: 5 },
        }}
      >
        {products.map((item) => (
          <SwiperSlide key={item.id}>
            <div
              className="card h-100 shadow-sm"
              style={{ minHeight: "360px" }}
            >
              <img
                src={import.meta.env.VITE_API_URL + item.pathImg}
                className="card-img-top"
                style={{
                  height: 180,
                  objectFit: "contain",
                  padding: 10,
                  cursor: "pointer"
                }}
                onClick={() =>
                  (window.location.href = `/ProductView/${item.slug}`)
                }
              />

              <div className="card-body d-flex flex-column text-center">
                <h6
                  className="fw-bold product-title"
                  style={{
                    height: "48px",
                    overflow: "hidden",
                    display: "-webkit-box",
                    WebkitLineClamp: 2,
                    WebkitBoxOrient: "vertical",
                    lineHeight: "24px",
                  }}
                >
                  {item.name}
                </h6>

                <div className="mt-auto">
                  <div className="text-success fw-bold mb-2">
                    {item.price.toLocaleString("fa-IR")} تومان
                  </div>

                  <button
                    className="btn btn-outline-warning w-100 fw-semibold"

                    onClick={() =>
                      (window.location.href = `/ProductView/${item.slug}`)
                    }
                  >
                    مشاهده
                  </button>
                </div>
              </div>
            </div>
          </SwiperSlide>
        ))}
      </Swiper>
    </div>
  );
}