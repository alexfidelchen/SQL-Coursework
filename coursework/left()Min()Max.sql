# LEFT(), MIN(), MAX() 
# How many rentals do we get each month?
# The below query is too specific with time. 
SELECT rental.rental_date, count(rental.rental_id)
FROM rental
GROUP BY 1
ORDER BY 2 desc
;
