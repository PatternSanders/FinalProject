import React from "react";
import Header from "./Header";
import Footer from "./Footer";
import ProductGrid from "./ProductGrid";

export default function App(props) {
  return (
    <>
      <Header categories={props.categories} />
      <main>
        <ProductGrid products={props.products} />
      </main>
      <Footer />
    </>
  );
}