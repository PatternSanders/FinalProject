import React from "react";
import Cart from "./Cart";
// import { usePage } from "@inertiajs/inertia-react";

export default function Header() {
  return (
    <header>
      <nav>
        <Cart />
      </nav>
    </header>
  );
}