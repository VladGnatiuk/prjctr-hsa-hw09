-- Session 1

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;


select order_id, qty, product_name from orders where qty>8;


INSERT INTO orders (qty, price, product_name) VALUES (15, 99.99, 'New Product');
select order_id, qty, product_name from orders where qty>8;

COMMIT;




ROLLBACK;


-- Session 2

SET TRANSACTION ISOLATION LEVEL SERIALIZABLE;
BEGIN TRANSACTION;

select order_id, qty, product_name from orders where qty>8;










select order_id, qty, product_name from orders where qty>8;


ROLLBACK ;



select order_id, qty, product_name from orders where qty>8;



ROLLBACK;
