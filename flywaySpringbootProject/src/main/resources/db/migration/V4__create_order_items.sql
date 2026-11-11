CREATE TABLE order_items (
                             id                SERIAL PRIMARY KEY,
                             order_id          INT NOT NULL,
                             product_id        INT NOT NULL,
                             quantity          INT NOT NULL,
                             price_at_purchase NUMERIC(10,2) NOT NULL,
                             CONSTRAINT fk_order_items_order
                                 FOREIGN KEY (order_id) REFERENCES orders (id) ON DELETE CASCADE,
                             CONSTRAINT fk_order_items_product
                                 FOREIGN KEY (product_id) REFERENCES products (product_id) ON DELETE RESTRICT,
                             CONSTRAINT chk_order_items_quantity CHECK (quantity > 0),
                             CONSTRAINT chk_order_items_price CHECK (price_at_purchase >= 0)
);