USE sakila;
SELECT 
     cus.customer_id,  
     cus.first_name, 
     cus.last_name,
     ad.address,
     pay.rental_id,
     pay.amount
FROM customer cus
JOIN payment pay 
    ON cus.customer_id = pay.payment_id
JOIN address ad
     ON cus.customer_id = ad.address_id;