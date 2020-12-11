import React from "react";
import { usePage } from "@inertiajs/inertia-react";
import { InertiaLink } from "@inertiajs/inertia-react";
import Routes from "../routes.js.erb";
import { Inertia } from "@inertiajs/inertia";
import Axios from "axios";

export default function Cart() {
  const { cart } = usePage().props;

  async function checkout() {
    const options = {
      method: 'POST',
      headers: { 'content-type': 'application/json', 'Accept': 'application/json'},
      data: JSON.stringify({}),
      url: "/checkout/create"
    }
    Axios(options)
    // .then(response => response.json())
    .then(function (response) {
      const publishable_key = response.data.publishable_key;
      const session_id = response.data.session_id;
      const stripe = Stripe(publishable_key);
      stripe.redirectToCheckout({
        sessionId: session_id
      })
      .then(function(result) {
        console.log(result.error.message);
      });
    })
    .catch(function (error) {
      console.log(error);
    });
  }

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
                </li>
              ))}
            </ul>
          </li>
          <li>
            <button className="button is-small" onClick={checkout}>💳Checkout💳</button>
          </li>
        </ul>
    )
  );
}