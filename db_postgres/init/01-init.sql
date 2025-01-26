-- Create a test table
CREATE TABLE IF NOT EXISTS orders (
    order_id BIGSERIAL PRIMARY KEY,
    created_at TIMESTAMP NOT NULL DEFAULT NOW(),
    qty NUMERIC(10) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    product_name VARCHAR(255) NOT NULL
); 