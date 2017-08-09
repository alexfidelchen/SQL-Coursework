# Comparison Operators Brianbuster Part 1 
SELECT inventory.store_id, film.rating,  SUM(payment.amount) as "Revenue"
FROM film, inventory, rental, payment
WHERE film.film_id = inventory.film_id
	and inventory.inventory_id = rental.inventory_id
	and rental.rental_id = payment.rental_id
	and inventory.store_id = 1
	and film.rating in ("PG-13", "R")
GROUP BY 1, film.rating
; 

# OH that's right! The count() function counts the number 
# in the column. SUM() adds up them all up. 
