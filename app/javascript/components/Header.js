import React from "react";
import Cart from "./Cart";
import { usePage } from "@inertiajs/inertia-react";

export default function Header() {
  const { header_image } = usePage().props;

  return (
    <header>
      <nav>
        <Cart />
      </nav>
    </header>
  );
}