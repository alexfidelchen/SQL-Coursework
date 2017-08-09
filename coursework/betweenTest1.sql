# Between operator 
# Selects all the months within 2005 using the between operator. 
SELECT LEFT(rental.rental_date,7), count(rental.rental_id)
FROM rental
WHERE LEFT(rental.rental_date,7) between "2005-05" and "2005-08"
GROUP BY 1
;