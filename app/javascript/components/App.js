import React from "react";
import Header from "./Header";
import Footer from "./Footer";
import ProductGrid from "./ProductGrid";

export default function App({products}, {categories}) {
  console.log(products);
  console.log(categories);
  return (
    <>
      <Header categories={categories} />
      <main>
        <ProductGrid products={products} />
      </main>
      <Footer />
    </>
  );
}