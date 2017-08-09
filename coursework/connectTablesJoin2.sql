drop temporary table if exists rUser;
create temporary table rUser
SELECT rental.customer_id, count(rental.rental_id) as "numRentals" , MAX(rental.rental_date) as "lastRental"
FROM rental
GROUP BY rental.customer_id
HAVING count(rental.rental_id) >= 30
;