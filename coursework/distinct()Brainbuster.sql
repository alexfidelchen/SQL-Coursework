SELECT LEFT(rental.rental_date,7) as "Month", count(distinct film.film_id) as "Distinct Films"
FROM film, inventory, rental
WHERE film.film_id = inventory.film_id
	and inventory.inventory_id = rental.inventory_id
GROUP BY Month
;

# Inventory tells the number of times a film has been checked out. 