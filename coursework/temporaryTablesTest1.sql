# Temporary Tables 
# What if I want a table with all my customers and all 
# the rentals they had? 

drop temporary table if exists rentals_per_customer;
create temporary table rentals_per_customer
SELECT rental.customer_id, count(rental.rental_id) as "NumRentals", SUM(payment.amount) as "Revenue"
FROM rental, payment
WHERE 
	rental.rental_id = payment.rental_id
GROUP BY rental.customer_id
;