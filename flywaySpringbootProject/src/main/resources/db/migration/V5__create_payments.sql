CREATE TABLE payments (
                          id       SERIAL PRIMARY KEY,
                          order_id INT NOT NULL,
                          amount   NUMERIC(10,2) NOT NULL,
                          CONSTRAINT fk_payments_order
                              FOREIGN KEY (order_id) REFERENCES orders (id) ON DELETE RESTRICT,
                          CONSTRAINT chk_payments_amount CHECK (amount >= 0)
);