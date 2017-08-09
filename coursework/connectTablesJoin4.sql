drop temporary table if exists activeNot2;
create temporary table activeNot2
SELECT activeNot.customer_id, activeNot.email, aUser.phone
FROM activeNot
	LEFT JOIN aUser ON activeNot.customer_id = aUser.customer_id
;