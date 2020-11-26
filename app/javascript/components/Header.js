import React from "react";
import Cart from "./Cart";
// import { usePage } from "@inertiajs/inertia-react";

export default function Header() {
  return (
    <header>
      <nav>
        <Cart />
      </nav>
      <h1>Drugs R' Us</h1>
      <h2>We make money off a pandemic</h2>
    </header>
  );
}