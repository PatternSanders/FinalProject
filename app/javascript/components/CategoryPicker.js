import React from "react";
import { Inertia } from "@inertiajs/inertia";
import { usePage } from "@inertiajs/inertia-react";
import Routes from "../routes.js.erb";

export default function CategoryPicker({ categories }) {
  return (
    <div class="control">
      <div class="select">
        <select>
        {categories.map((category) => (
          <InertiaLink href={Routes.category_path(category.id)}>
            <option>{category.name}</option>
          </InertiaLink>
        ))}
        </select>
      </div>
    </div>
  );
}
