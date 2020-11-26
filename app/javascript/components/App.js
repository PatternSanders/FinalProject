import React from "react";
import Header from "./Header";
import ProductGrid from "./ProductGrid";

export default function App({products}) {
  return (
    <>
      <Header />
      <main>
        <ProductGrid products={products} />
      </main>
    </>
  );
}