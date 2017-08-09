drop temporary table if exists activeNot;
create temporary table activeNot
SELECT 
	customer.customer_id, customer.first_name, customer.last_name,
	customer.email, customer.active
FROM customer
;