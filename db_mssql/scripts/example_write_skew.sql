-- Session 1

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;


select order_id, qty, product_name from orders where qty>8;


INSERT INTO orders (qty, price, product_name) VALUES (15, 99.99, 'New Product');
select order_id, qty, product_name from orders where qty>8;

COMMIT;


-- Session 2

SET TRANSACTION ISOLATION LEVEL SNAPSHOT;
BEGIN TRANSACTION;

select order_id, qty, product_name from orders where qty>8;










INSERT INTO orders (qty, price, product_name) VALUES (15, 99.99, 'New Product 2');
select order_id, qty, product_name from orders where qty>8;


COMMIT;







select order_id, qty, product_name from orders where qty>8;


