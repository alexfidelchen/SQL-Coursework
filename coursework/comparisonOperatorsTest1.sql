# Comparison Operators 
# How many users have rented at least 3 times a day?

SELECT customer.first_name, customer.last_name, customer.customer_id, count(rental.rental_id)
FROM rental, customer
WHERE rental.customer_id = customer.customer_id
GROUP BY rental.customer_id
; 