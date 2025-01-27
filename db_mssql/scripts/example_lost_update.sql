-- Session 1

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;

-- DBCC USEROPTIONS;
SELECT @@SPID AS 'Transaction ID';

select order_id, qty, product_name from orders where order_id=1;


update orders set qty=50 where order_id=1;
select order_id, qty, product_name from orders where order_id=1;

COMMIT;









select order_id, qty, product_name from orders where order_id=1;





-- Session 2

SET TRANSACTION ISOLATION LEVEL READ COMMITTED;
BEGIN TRANSACTION;

SELECT @@SPID AS 'Transaction ID';


select order_id, qty, product_name from orders where order_id=1;










update orders set qty=100 where order_id=1;
select order_id, qty, product_name from orders where order_id=1;


COMMIT;








