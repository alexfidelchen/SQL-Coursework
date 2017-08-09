# in operator
# What if I wanted to know the number 
# of rentals in certain catagories?

# Number of rentals in Comedy, Sports and Family
SELECT cat.name as "Category", count(rental.rental_id) as "Number of Rentals"
FROM rental, inventory, film, film_category fc, category cat
WHERE rental.inventory_id = inventory.inventory_id
	and inventory.film_id = film.film_id
	and film.film_id = fc.film_id
	and fc.category_id = cat.category_id
	and cat.name in ("Comedy", "Sports", "Family")
GROUP BY 1
;