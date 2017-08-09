# Return reward users who are also active. 
SELECT customer
FROM rUser
	LEFT JOIN aUser ON rUser.customer_id = aUser.customer_id
;

# Well, it's impossible to get the email of a rewards people 
# who are not active, becauase I only have emails of people 
# who are active. 