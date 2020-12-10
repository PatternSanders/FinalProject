import React from "react";
import Routes from "../routes.js.erb";
import { InertiaLink } from "@inertiajs/inertia-react";

export default function CategoryPicker({ categories }) {

  return (
    <>
      <div>
        {categories.map((category) => (
          <InertiaLink className="button is-small is-primary" href={Routes.category_path(category.id)}>
            {category.name}
          </InertiaLink>
        ))}
      </div>
    </>
  );
}
