-- Dirty read
-- Session 1

BEGIN TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
SELECT txid_current();

SHOW transaction_isolation;


select order_id, product_name from orders where order_id=1;








select order_id, product_name from orders where order_id=1;

ROLLBACK;


-- Dirty read
-- Session 2

BEGIN TRANSACTION;
SELECT txid_current();

SHOW transaction_isolation;


select order_id, product_name from orders where order_id=1;


update orders set product_name=concat(product_name, '-dirty') where order_id=1;

select order_id, product_name from orders where order_id=1;






ROLLBACK;

