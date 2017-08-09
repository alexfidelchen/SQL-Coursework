SELECT customer.first_name as "First", customer.last_name as "Last", max(rental.rental_date) as "Last Rental Date"
FROM customer, rental
WHERE customer.customer_id = rental.customer_id
GROUP BY customer.customer_id 
;