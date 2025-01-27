-- Lost update
-- Session 1

BEGIN TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT txid_current();

SHOW transaction_isolation;


select order_id, qty, product_name from orders where qty>8;


INSERT INTO orders (qty, price, product_name) VALUES (15, 99.99, 'New Product');
select order_id, qty, product_name from orders where qty>8;

COMMIT;
















-- Session 2

BEGIN TRANSACTION ISOLATION LEVEL REPEATABLE READ;
SELECT txid_current();

SHOW transaction_isolation;


select order_id, qty, product_name from orders where qty>8;










select order_id, qty, product_name from orders where qty>8;


ROLLBACK ;


select order_id, qty, product_name from orders where qty>8;

