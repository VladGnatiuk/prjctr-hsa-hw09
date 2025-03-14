
INSERT INTO orders (qty, price, product_name) VALUES (10, 99.99, 'Sample Product');

UPDATE orders SET qty = 20 WHERE order_id = 1;

BEGIN;
SELECT * FROM orders WHERE order_id = 1;

BEGIN TRANSACTION ISOLATION LEVEL READ UNCOMMITTED; -- Behaves the same as READ COMMITTED
BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION ISOLATION LEVEL SERIALIZABLE;

COMMIT TRANSACTION;
ROLLBACK TRANSACTION;
