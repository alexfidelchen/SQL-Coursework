# Temporary Tables Brainbuster 
drop temporary table if exists actorR;
# actorR short for "actor revenue"
create temporary table actorR
SELECT actor.actor_id, actor.first_name as "fName", actor.last_name as "lName", film.film_id, rental.rental_id,payment.amount
FROM  actor, film_actor, film, inventory, rental, payment
WHERE actor.actor_id = film_actor.actor_id
	and film_actor.film_id = film.film_id
	and film.film_id = inventory.film_id
	and inventory.inventory_id = rental.inventory_id
	and rental.rental_id = payment.rental_id
;
