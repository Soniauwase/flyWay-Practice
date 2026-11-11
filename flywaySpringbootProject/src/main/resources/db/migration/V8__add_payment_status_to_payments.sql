CREATE TYPE payment_status AS ENUM ('PENDING', 'SUCCESS', 'FAILED', 'REFUNDED');

ALTER TABLE payments
    ADD COLUMN payment_status payment_status NOT NULL DEFAULT 'PENDING';