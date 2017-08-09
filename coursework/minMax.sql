#MIN() and MAX()
SELECT film.title as "Film Name", min(rental.rental_date) as "First Rental", max(rental.rental_date) as "Last Rental"
FROM rental, inventory, film
WHERE rental.inventory_id = inventory.inventory_id
	and inventory.film_id = film.film_id
GROUP BY film.film_id
;