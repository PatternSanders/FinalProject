import React from "react";
import Product from "./Product";

export default function ProductGrid(props) {
  return (
    <div className="">
      {props.products.map((product) => (
        <Product {...product} key={product.id} />
      ))}
    </div>
  );
}