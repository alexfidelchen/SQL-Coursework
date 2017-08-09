# LEFT(), MIN(), MAX() 
# How many rentals do we get each month?
SELECT LEFT(rental.rental_date,7), count(rental.rental_id)
FROM rental
GROUP BY 1
;