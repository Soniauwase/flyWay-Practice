CREATE TABLE customers (
                           id            SERIAL PRIMARY KEY,
                           name          VARCHAR(100) NOT NULL,
                           email         VARCHAR(150) NOT NULL,
                           password_hash VARCHAR(255) NOT NULL,
                           CONSTRAINT uq_customers_email UNIQUE (email)
);