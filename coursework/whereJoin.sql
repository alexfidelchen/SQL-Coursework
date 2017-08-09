# Connecting tables using WHERE clause 
SELECT ac.customer_id, ac.fav_color rc.num_purchases
FROM active_customers ac, reward_customers rc
WHERE ac.customer_id = rc.customer_id
;

# Connecting tables using the JOIN clause
# Instead of using WHERE, you connect tables together using the 
# JOIN clause inside FROM
SELECT ac.customer_id, ac.fav_color, rc.num_purchases
FROM active_customers ac
	JOIN reward_customers rc ON ac.customer_id = rc.customer_id
# The above statement says " Join active_customers ac to 
#	reward_customers on the columns ac.customer_id and rc.customer.id " 
;

# Connecting tables using WHERE or JOIN give you the same query. 

