SELECT address.address, customer.store_id, customer.address_id
FROM  address
JOIN customer ON address.address_id = customer.address_id
;