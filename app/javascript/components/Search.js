import { Inertia } from "@inertiajs/inertia";
import React from "react";

export default function Search() {
  return (
    <>
        <input id="searchBar" className="input is-small" type="text" placeholder="Seach for drugs!" />
        <button className="button is-warning is-small" >Search</button>
    </>
  );
}