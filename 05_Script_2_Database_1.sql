-- CODE CREATED AS PART OF A COURSE

-- FIRST DATABASE
-- SECOND PART


-- CASE
SELECT customer_id,
CASE
	WHEN(customer_id <= 100) THEN 'Premium'
	WHEN(customer_id BETWEEN 100 AND 200) THEN 'Plus'
	ELSE 'Normal' 
END AS customer_class
FROM customer;

SELECT customer_id,
CASE customer_id
	WHEN 2 THEN 'Winner'
	WHEN 5 THEN 'Second Place'
	ELSE 'Normal'
END AS raffle_results
FROM customer;

SELECT 
SUM(CASE rental_rate
	WHEN 0.99 THEN 1
	ELSE 0
END) AS bargains,
SUM(CASE rental_rate
	WHEN 2.99 THEN 1
	ELSE 0
END) AS regular,
SUM(CASE rental_rate
	WHEN 4.99 THEN 1
	ELSE 0
END) AS premium
FROM film;


-- CASE CHALLENGE
SELECT
SUM(CASE rating
	WHEN 'R' THEN 1
	ELSE 0
END) AS r,
SUM(CASE rating
	WHEN 'PG' THEN 1
	ELSE 0
END) AS pg,
SUM(CASE rating
	WHEN 'PG-13' THEN 1
	ELSE 0
END) AS pg13
FROM film;


-- COALESCE
-- No example was mentioned in the course


-- CAST
SELECT CAST('5' AS INT) AS new_int;
SELECT '10'::INT;
SELECT CHAR_LENGTH(CAST(inventory_id AS VARCHAR)) FROM rental;
SELECT CHAR_LENGTH(inventory_id::VARCHAR) FROM rental;


-- NULLIF
-- In "Script_own_Database.sql" to make sure this "dvdrental"-database stays untouched. 


-- VIEWS
/*
CREATE VIEW customer_info AS 
SELECT first_name,last_name,address FROM customer 
INNER JOIN address ON customer.address_id = address.address_id;

SELECT * FROM customer_info;

CREATE OR REPLACE VIEW customer_info AS
SELECT first_name,last_name,address,district FROM customer 
INNER JOIN address ON customer.address_id = address.address_id;

SELECT * FROM customer_info;

ALTER VIEW customer_info RENAME TO c_info;
ALTER VIEW c_info RENAME TO customer_info;
DROP VIEW IF EXISTS customer_info;
*/


-- IMPORT AND EXPORT
-- In "Script_own_Database.sql" to make sure this "dvdrental"-database stays untouched. 


--------> Course finished!
