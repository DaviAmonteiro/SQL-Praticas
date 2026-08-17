USE sakila;

SELECT 
customer_id,
amount,
amount - (amount * 0.10) AS "10% de desconto"
FROM payment
WHERE customer_id = 5
