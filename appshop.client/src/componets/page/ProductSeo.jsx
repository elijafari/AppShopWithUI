import { Helmet } from "react-helmet";

export function ProductSeo(props) {
    const description = `${props.description}. خرید ${props.name} با بهترین قیمت و کیفیت. ارسال سریع به سراسر کشور از Electroej`;

    return (
        <Helmet>
            <meta name="description" content={`خرید ${props.name} با بهترین قیمت و کیفیت در فروشگاه آنلاین. ارسال سریع به سراسر کشور.`} />
            <meta name="title" content={`خرید ${props.name}, قیمت ${props.price} از Electroej`} />
            <meta name="description" content={`خرید ${props.name} | ${props.description}. ارسال سریع به سراسر کشور با بهترین قیمت از Electroej`}
            />

            <script type="application/ld+json">
                {`
        {
          "@context": "https://schema.org",
          "@type": "Product",
          "name": "${props.name}",
          "image": "https://electroej.ir/${props.pathImg}",
          "description": "${description}",
          "url": "https://electroej.ir/productView/${props.slug}",
          "sku": "${props.sku || props.id || "electroej"}",
          "brand": {
            "@type": "Brand",
            "name": "Electroej"
          },
          "offers": {
            "@type": "Offer",
            "url": "https://electroej.ir/productView/${props.slug}",
            "priceCurrency": "IRR",
            "price": "${props.price}",
            "availability": "https://schema.org/InStock",
            "priceValidUntil": "2030-12-31",
            "hasMerchantReturnPolicy": {
              "@type": "MerchantReturnPolicy",
              "returnPolicyCategory": "http://schema.org/ReturnByMerchant",
              "returnMethod": "http://schema.org/MailReturn",
              "returnFees": "http://schema.org/FreeReturn"
            },
            "shippingDetails": {
              "@type": "OfferShippingDetails",
              "shippingRate": {
                "@type": "MonetaryAmount",
                "value": "0",
                "currency": "IRR"
              },
              "shippingDestination": {
                "@type": "DefinedRegion",
                "addressCountry": "IR"
              },
              "deliveryTime": {
                "@type": "ShippingDeliveryTime",
                "handlingTime": {
                  "@type": "QuantitativeValue",
                  "value": 1,
                  "unitCode": "d"
                },
                "transitTime": {
                  "@type": "QuantitativeValue",
                  "value": 3,
                  "unitCode": "d"
                }
              }
            }
          },
          "aggregateRating": {
            "@type": "AggregateRating",
            "ratingValue": "4.4",
            "reviewCount": 89
          }
        }
        `}
            </script>
        </Helmet>
    );
}