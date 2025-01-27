-- Session 1

SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED;
BEGIN TRANSACTION;

-- DBCC USEROPTIONS;
SELECT @@SPID AS 'Transaction ID';

SELECT order_id, product_name FROM orders WHERE order_id=1;

UPDATE orders SET product_name=CONCAT(product_name, '-dirty') WHERE order_id=1;
SELECT order_id, product_name FROM orders WHERE order_id=1;

ROLLBACK;



-- Session 2

SET TRANSACTION ISOLATION LEVEL REPEATABLE READ;
BEGIN TRANSACTION;

SELECT @@SPID AS 'Transaction ID';


SELECT order_id, product_name FROM orders WHERE order_id=1;




SELECT order_id, product_name FROM orders WHERE order_id=1;

ROLLBACK;


SELECT order_id, product_name FROM orders WHERE order_id=1;