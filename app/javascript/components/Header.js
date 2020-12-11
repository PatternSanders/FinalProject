import React from "react";
import Cart from "./Cart";
import Search from "./Search";
import CategoryPicker from "./CategoryPicker";

export default function Header({categories}) {
  return (
    <header>
      <nav className="navbar" role="navigation" aria-label="main navigation">
        <div className="navbar-brand">
          <div className="navbar-start">
            <h1><a className="navbar-item" href="/">Drugs R' Us</a></h1>
          </div>
        </div>

        <div className="navbar-end">
          <div className="navbar-item">
            <Search />
          </div>
          <div className="navbar-item">
            <CategoryPicker categories={ categories } />
          </div>
          <div className="navbar-item">
            <Cart />
          </div>
        </div>
      </nav>

      <div className="hero-body">
          <div className="columns is-centered">
            <div className="column is-half">
              <h1 className="title">
                Drugs R' Us
              </h1>
              <h2 className="subtitle">
                We make money off a pandemic
              </h2>
            </div>
        </div>
      </div>
    </header>
  );
}