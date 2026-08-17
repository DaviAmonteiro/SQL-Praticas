USE sakila;
SELECT * 
FROM customer
WHERE customer_id = 2 AND address_id = 10 OR address_id <= 8 