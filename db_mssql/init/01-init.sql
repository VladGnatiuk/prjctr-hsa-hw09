CREATE DATABASE hw09;
GO

USE hw09;
GO

IF OBJECT_ID('orders', 'U') IS NOT NULL 
    DROP TABLE orders;

-- Create a test table
CREATE TABLE orders (
    order_id BIGINT IDENTITY(1,1) PRIMARY KEY,
    created_at DATETIME NOT NULL DEFAULT GETDATE(),
    qty NUMERIC(10, 0) NOT NULL,
    price NUMERIC(10, 2) NOT NULL,
    product_name VARCHAR(255) NOT NULL
);
