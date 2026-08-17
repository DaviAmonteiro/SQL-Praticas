USE sakila;
SELECT *
FROM payment 
WHERE amount BETWEEN 5.99 AND 9.99
ORDER BY amount DESC;