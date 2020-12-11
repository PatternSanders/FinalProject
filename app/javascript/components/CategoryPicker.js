import React from "react";
import Routes from "../routes.js.erb";
import { InertiaLink } from "@inertiajs/inertia-react";

export default function CategoryPicker({ categories }) {

  return (
    <>

        {categories.map((category) => (
          <div key={category.id}>
            <InertiaLink className="button is-small is-primary" href={Routes.category_path(category.id)}>
              {category.name}
            </InertiaLink>
          </div>
        ))}

    </>
  );
}
