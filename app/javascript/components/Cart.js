import React from "react";
import { usePage } from "@inertiajs/inertia-react";
import { InertiaLink } from "@inertiajs/inertia-react";
import Routes from "../routes.js.erb";

export default function Cart() {
  const { cart } = usePage().props;

  return (
    cart.length !== 0 && (
      <ul>
        <li>
        🛒Cart🛒 <sup>{cart.length}</sup>
          <ul>
            {cart.map((product) => (
              <li key={product.id}>
                {product.name}{" "}
                <InertiaLink
                  href={Routes.cart_path(product.id)}
                  method="delete"
                >
                  ❌
                </InertiaLink>
                {/* <InertiaLink
                  href={Routes.cart_path(product_id, product.quantity)}
                  method="put"
                >
                  🔼
                </InertiaLink>
                <InertiaLink
                  href={Routes.cart_path(product_id, product.quantity)}
                  method="put"
                >
                  🔽
                </InertiaLink> */}
              </li>
            ))}
          </ul>
        </li>
      </ul>
    )
  );
}