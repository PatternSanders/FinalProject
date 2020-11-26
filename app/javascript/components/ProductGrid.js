import React from "react";
import { InertiaLink } from "@inertiajs/inertia-react";
import AddRemoveCart from "./AddRemoveCart";
import Routes from "../routes.js.erb";

export default function ProductGrid({ products }) {
  return (
    <section>
      <div class="columns is-multiline is-variable is-1-mobile is-3-desktop">
        {products.map((product) => (
          <div class="column">
            <div class="card" key={product.id}>
              <div class="card-image">
                <figure class="image is-128x128">
                  <img src={product.image_url} alt={product.name} />
                </figure>
              </div>
              <div class="card-content">
                  <p class="title is-4">
                    <InertiaLink href={Routes.product_path(product.id)}>
                      {product.name}
                    </InertiaLink>
                  </p>
                  <div class="media">
                  {product.on_sale == true &&
                    <div class="notification is-danger is-light">
                      <p class="subtitle is-4">ON SALE!</p>
                    </div>
                  }
                  <br />
                  <p>Price: ${product.price}</p>
                  <br />
                  <p>Stock: {product.stock}</p>
                  <br />
                  <p>Category: {product.category}</p>
                </div>
              </div>
              <AddRemoveCart product={product} />
              <div class="content">
                <p>{product.description}</p>
              </div>
            </div>
          </div>
        ))}
      </div>
    </section>
  );
}