import React from "react";

export default function Product(props) {
  return (
  <div className="">
    <p>Name: {props.name}</p>
    <p>Description: {props.description}</p>
    <p>Price: ${props.price}</p>
    <p>Stock: {props.stock}</p>
  </div>
  );
}