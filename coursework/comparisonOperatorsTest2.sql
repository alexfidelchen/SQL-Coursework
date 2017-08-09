# Comparison Operators 
# How many users have rented at least 3 times a day?

SELECT rental.customer_id, count(rental.rental_id) as "Number of Rentals"
FROM rental
GROUP BY rental.customer_id
HAVING count(rental.rental_id) >= 3
; 