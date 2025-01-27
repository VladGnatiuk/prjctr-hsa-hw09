-- Lost update
-- Session 1

BEGIN TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT txid_current();

SHOW transaction_isolation;


select order_id, qty, product_name from orders where order_id=1;


update orders set qty=50 where order_id=1;
select order_id, qty, product_name from orders where order_id=1;

COMMIT;










select order_id, qty, product_name from orders where order_id=1;


-- Lost update
-- Session 2

BEGIN TRANSACTION ISOLATION LEVEL READ COMMITTED;
SELECT txid_current();

SHOW transaction_isolation;


select order_id, qty, product_name from orders where order_id=1;










update orders set qty=100 where order_id=1;
select order_id, qty, product_name from orders where order_id=1;


COMMIT;



