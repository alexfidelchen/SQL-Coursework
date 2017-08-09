SELECT count(film_id), rental_rate, special_features
FROM film
group by rental_rate, special_features
;
# To get the next brain-buster, read up on the each function's syntax. 