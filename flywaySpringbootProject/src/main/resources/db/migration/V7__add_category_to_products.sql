CREATE TYPE product_category AS ENUM (
    'ELECTRONICS',
    'CLOTHING',
    'HOME_AND_KITCHEN',
    'BEAUTY_AND_PERSONAL_CARE',
    'BOOKS_AND_STATIONERY',
    'SPORTS_AND_OUTDOORS',
    'HEALTH_AND_WELLNESS',
    'TOYS_AND_GAMES',
    'GROCERIES_AND_FOOD',
    'JEWELRY_AND_ACCESSORIES'
    );
ALTER TABLE products ADD COLUMN category product_category;
UPDATE products SET category = 'ELECTRONICS' WHERE category IS NULL;
ALTER TABLE products ALTER COLUMN category SET NOT NULL;
CREATE INDEX idx_products_category ON products (category);