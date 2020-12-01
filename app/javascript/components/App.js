import React from "react";
import Header from "./Header";
import Footer from "./Footer";
import ProductGrid from "./ProductGrid";
import { usePage } from '@inertiajs/inertia-react'

export default function App({products}, {categories}) {
  const { flash } = usePage().props
  return (
    <>
      <Header categories={categories} />
      <main>
        {/* {flash.message && (
          <div class="alert">{flash.message}</div>
        )} */}
        <ProductGrid products={products} />
      </main>
      <Footer />
    </>
  );
}