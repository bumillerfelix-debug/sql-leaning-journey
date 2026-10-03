--SELECT * FROM customer;
--SELECT first_name,last_name,email FROM customer;

--SELECT DISTINCT(release_year)FROM film;
--SELECT DISTINCT rating FROM film;

--SELECT COUNT(amount) FROM payment;
--SELECT COUNT(DISTINCT(amount)) FROM payment;

--SELECT * FROM customer WHERE first_name='Jared';
--SELECT * FROM film WHERE rental_rate > 4 AND replacement_cost >= 19.99 AND rating;

--SELECT first_name,last_name FROM customer ORDER BY store_id DESC,first_name ASC;
--SELECT * FROM payment WHERE amount != 0 ORDER BY payment_date DESC LIMIT 5;

--SELECT * FROM payment WHERE amount != 0 ORDER BY payment_date DESC LIMIT 5;
--SELECT customer_id FROM payment ORDER BY payment_date ASC LIMIT 10;
--SELECT title,length FROM film ORDER BY length ASC LIMIT 5;
--SELECT COUNT(length) FROM film WHERE length <= 50;

--SELECT * FROM payment WHERE payment_date BETWEEN '2007-02-01' AND '2007-02-15';
--SELECT * FROM customer WHERE first_name IN('Jake','John','Julie');
--SELECT * FROM customer WHERE first_name ILIKE '_er%' AND last_name NOT LIKE 'B%' ORDER BY last_name;

--SELECT COUNT(payment_id) FROM payment WHERE amount > 5;
--SELECT COUNT(first_name) FROM actor WHERE first_name LIKE 'P%';
--SELECT DISTINCT(district) FROM address;
--SELECT COUNT(*) FROM film WHERE rating = 'R' AND replacement_cost BETWEEN 5 AND 15;
--SELECT COUNT(title) FROM film WHERE title LIKE '%Truman%';

--SELECT MAX(replacement_cost), MIN(replacement_cost) FROM film;
--SELECT ROUND(AVG(replacement_cost),2) FROM film;
--SELECT SUM(replacement_cost) FROM film;

--SELECT customer_id,staff_id,SUM(amount) FROM payment GROUP BY staff_id,customer_id ORDER BY customer_id;
--SELECT DATE(payment_date),SUM(amount) FROM payment GROUP BY DATE(payment_date) ORDER BY SUM(amount) DESC;
--SELECT staff_id,COUNT(amount) FROM payment GROUP BY staff_id ORDER BY COUNT(amount) DESC;
--SELECT rating,ROUND(AVG(replacement_cost),2) FROM film GROUP BY rating ORDER BY AVG(replacement_cost) DESC;
--SELECT customer_id,SUM(amount) FROM payment GROUP BY customer_id ORDER BY SUM(amount) DESC LIMIT 5;

--SELECT customer_id,SUM(amount) FROM payment GROUP BY customer_id HAVING SUM(amount) > 100;
--SELECT store_id, COUNT(*) from customer GROUP BY store_id HAVING COUNT(*) > 300;
--SELECT customer_id,COUNT(*) FROM payment GROUP BY customer_id HAVING COUNT(*) >= 40;
--SELECT customer_id,staff_id,SUM(amount) FROM payment WHERE staff_id = 2 GROUP BY customer_id,staff_id HAVING SUM(amount) > 100;




