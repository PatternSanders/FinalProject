import React from "react";
import { InertiaLink } from "@inertiajs/inertia-react";
import AddRemoveCart from "./AddRemoveCart";
import Routes from "../routes.js.erb";

export default function ProductGrid({ products }) {
  return (
    <section>
      <div className="columns is-multiline is-variable is-1-mobile is-3-desktop">
        {products.map((product) => (
          <div className="column" key={product.id}>
            <div className="card" key={product.id}>
              <div className="card-image">
                <figure className="image is-128x128">
                  <img src={product.image_url} alt={product.name} />
                </figure>
              </div>
              <div className="card-content">
                <p className="title is-4">
                  <InertiaLink href={Routes.product_path(product.id)}>
                    {product.name}
                  </InertiaLink>
                </p>
                <div className="media">
                {product.on_sale == true &&
                  <div className="notification is-danger is-light">
                    <p className="subtitle is-4">ON SALE!</p>
                  </div>
                }
                </div>
                <p>Price: ${product.price}</p>
                <p>Stock: {product.stock}</p>
              </div>

              <div className="content">
                <p>{product.description}</p>
                <AddRemoveCart product={product} />
              </div>
            </div>
          </div>
        ))}
      </div>
    </section>
  );
}