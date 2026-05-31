// export function ProductTorop(props) {
//   return (
//     <div
//       data-product-id={props.data.id}
//       data-product-name={props.data.name}
//       data-product-price={props.data.price}
//       data-product-availability={props.data.isActive ? "instock" : "outofstock"}
//     >
//     </div>
//   );
// }
export function ProductTorop(props) {
  return (
<>
      <meta name={`product_id_${props.data.id}`} content={props.data.id} />
      <meta name={`product_name_${props.data.id}`} content={props.data.name} />
      <meta name={`product_price_${props.data.id}`} content={props.data.price} />
      <meta name={`og:image_${props.data.id}`} content={`https://electroej.ir/productView/${props.data.slug}`} />
      <meta name={`availability_${props.data.id}`} content={props.data.isActive ? "instock" : "outofstock"} />
           
</>
  );
}