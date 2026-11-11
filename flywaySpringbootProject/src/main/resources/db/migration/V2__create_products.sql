CREATE TABLE products (
                          product_id             SERIAL PRIMARY KEY,
                          name           VARCHAR(150) NOT NULL,
                          price          NUMERIC(10,2) NOT NULL,
                          stock_quantity INT NOT NULL DEFAULT 0,
                          CONSTRAINT chk_products_price CHECK (price >= 0),
                          CONSTRAINT chk_products_stock CHECK (stock_quantity >= 0)
);