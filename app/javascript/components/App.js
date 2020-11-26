import React from "react";
import Header from "./Header";
import Footer from "./Footer";
import ProductGrid from "./ProductGrid";

export default function App({products}) {
  return (
    <>
      <Header />
      <main>
        <ProductGrid products={products} />
      </main>
      <Footer />
    </>
  );
}