drop temporary table if exists aUser ;
create temporary table aUser
SELECT customer.*, address.phone
FROM customer 
	JOIN address ON customer.address_id = address.address_id 
WHERE customer.active = 1
GROUP BY 1 -- Inline comment. 
;