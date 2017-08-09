# What if I wanted to know how much money I'm making on 
# every title? 

SELECT film.title "Film Title", count(rental.rental_id) as "Number of Rentals", film.rental_rate as "Rent Price", count(rental.rental_date) * film.rental_rate as "Revenue"
FROM film, inventory, rental
WHERE film.film_id = inventory.film_id
	and inventory.inventory_id = rental.inventory_id
group by film.title
ORDER BY Revenue desc
;
# revenue = price * number of rentals