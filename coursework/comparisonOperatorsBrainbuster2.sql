# Comparison Operators Brianbuster Part 2
SELECT inventory.store_id, film.rating,  SUM(payment.amount) as "Revenue"
FROM film, inventory, rental, payment
WHERE film.film_id = inventory.film_id
	and inventory.inventory_id = rental.inventory_id
	and rental.rental_id = payment.rental_id
	and inventory.store_id = 1
	and film.rating in ("PG-13", "R")
	and rental.rental_date between "2005-06-08" and "2005-07-19"
GROUP BY 1, film.rating

# Between June 8th and July 19th, store 1 earned this much 
# revenue. 