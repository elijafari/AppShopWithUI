import { Helmet } from "react-helmet";
export function ProductSeo(props) {
  return (

    <Helmet>
      <meta name="description" content={`خرید ${props.name} با بهترین قیمت و کیفیت در فروشگاه آنلاین. ارسال سریع به سراسر کشور.`} />
      <meta name="keywords" content={`خرید ${props.name}, قیمت ${props.name}, فروشگاه آنلاین , electroej, الکتروایجی, الکترو ایجی`} />
      <meta name="title" content={`خرید ${props.name}, قیمت ${props.name}, فروشگاه آنلاین , electroej, الکتروایجی, الکترو ایجی`} />

      {/* Schema Markup */}
      <script type="application/ld+json">
        {`
          {
            "@context": "https://schema.org",
            "@type": "Product",
            "name": "${props.name}",
            "image": "${import.meta.env.VITE_API_URL + props.pathImg}",
            "description":"${props.description}",
            "url": "${import.meta.env.VITE_API_URL}/productView/${props.slug}",
            "priceCurrency": "IRR",
            "price": "${props.price}",
            "offers": {
              "@type": "Offer",
              "priceCurrency": "IRR",
              "price": "${props.price}",
              "availability": "https://schema.org/InStock",
                "priceValidUntil": "2030-12-31",
                "hasMerchantReturnPolicy": {
    "@type": "MerchantReturnPolicy",
    "returnPolicyCategory": "http://schema.org/ReturnByMerchant",
    "returnMethod": "http://schema.org/MailReturn",
    "returnFees": "http://schema.org/FreeReturn",
    "inStoreReturnFees": "http://schema.org/FreeReturn",
    "returnPolicySeasonalOverride": null
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
            "review": {
              "@type": "Review",
              "reviewRating": {
                "@type": "Rating",
                "ratingValue": 4,
                "bestRating": 5
              },
              "author": {
                "@type": "Person",
                "name": "ehsan jafari"
              }
            },
            "aggregateRating": {
              "@type": "AggregateRating",
              "ratingValue": 4.4,
              "reviewCount": 89
            },
            "sku": "electroej",
            "brand": {
              "@type": "Brand",
              "name": "electroej"
            }
          }
          `}
      </script>
    </Helmet>
  )
}