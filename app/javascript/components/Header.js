import React from "react";
import Cart from "./Cart";
import Search from "./Search";
// import { usePage } from "@inertiajs/inertia-react";

export default function Header() {
  return (
    <header>
      <nav class="navbar" role="navigation" aria-label="main navigation">
        <div class="navbar-brand">
          <div class="navbar-start">
            <h1><a class="navbar-item" href="/">Drugs R' Us</a></h1>
          </div>
        </div>

        <div class="navbar-end">
          <div class="navbar-item">
            <Search />
          </div>
          <div class="navbar-item">
            <Cart />
          </div>
        </div>
      </nav>

      <div class="hero-body">
        <div class="container">
          <div class="cloumns is-centered">
            <div class="column is-half">
              <h1 class="title">
                Drugs R' Us
              </h1>
              <h2 class="subtitle">
                We make money off a pandemic
              </h2>
            </div>
          </div>
        </div>
      </div>
    </header>
  );
}