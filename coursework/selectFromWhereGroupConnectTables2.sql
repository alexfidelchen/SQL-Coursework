SELECT film.title, rental.inventory_id, rental.rental_date
FROM film, inventory, rental
WHERE film.film_id = inventory.film_id
	and inventory.inventory_id = rental.inventory_id
;