SELECT rental_rate, rental_duration, count(film_id)
FROM film
group by rental_rate, rental_duration
;