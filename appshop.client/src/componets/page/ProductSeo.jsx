import { Helmet } from "react-helmet";

export function ProductSeo(props) {
  
  const description = `${props.description}. خرید ${props.name} با بهترین قیمت و کیفیت. ارسال سریع به سراسر کشور از Electroej`;
  const url = `https://electroej.ir/productView/${props.slug}`;
  return (
    <Helmet>
      <meta name="description" content={description} />

      {/* canonical مهم‌ترین خط */}
      <link rel="canonical" href={url} />

      <meta property="og:title" content={`خرید ${props.name}`} />
      <meta property="og:description" content={description} />
      <meta property="og:url" content={url} />
      <meta property="og:type" content="product" />
      <script type="application/ld+json">
        {`
        {
          "@context": "https://schema.org",
          "@type": "Product",
          "name": "${props.name}",
          "image": "https://electroej.ir${props.pathImg.replace(/\\/g, "/")}",
          "description": "${description}",
          "url": "${url}",
          "sku": "${props.sku || props.id || "electroej"}",
          "brand": {
            "@type": "Brand",
            "name": "Electroej"
          },
          "offers": {
            "@type": "Offer",
            "url": "${url}",
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