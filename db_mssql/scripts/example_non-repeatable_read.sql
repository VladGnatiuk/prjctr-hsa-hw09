-- Session 1

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;

select order_id, qty, product_name from orders where order_id=1;


update orders set qty=50 where order_id=1;
select order_id, qty, product_name from orders where order_id=1;

COMMIT;


-- Session 2

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION;


select order_id, qty, product_name from orders where order_id=1;










select order_id, qty, product_name from orders where order_id=1;


COMMIT;


select order_id, qty, product_name from orders where order_id=1;
