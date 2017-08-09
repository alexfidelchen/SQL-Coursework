SELECT *
FROM inventory, payment, rental
WHERE payment.rental_id = rental.rental_id	
	and rental.inventory_id = inventory.inventory_id
;