SELECT film.title, count(rental.return_date)
FROM film, inventory, rental
WHERE film.film_id = inventory.film_id
	and inventory.inventory_id = rental.inventory_id
group by film.title
;