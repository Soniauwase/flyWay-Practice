CREATE TABLE orders (
                        id          SERIAL PRIMARY KEY,
                        customer_id INT NOT NULL,
                        status      VARCHAR(20) NOT NULL DEFAULT 'PENDING',
                        created_at  TIMESTAMP NOT NULL DEFAULT NOW(),
                        CONSTRAINT fk_orders_customer
                            FOREIGN KEY (customer_id) REFERENCES customers (id) ON DELETE RESTRICT,
                        CONSTRAINT chk_orders_status
                            CHECK (status IN ('PENDING', 'PROCESSING', 'COMPLETED', 'CANCELLED'))
);