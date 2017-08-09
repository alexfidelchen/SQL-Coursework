# Return reward users who are also active. 
SELECT aUser.customer_id, aUser.email, aUser.first_name
FROM aUser
	JOIN rUser ON aUser.customer_id = rUser.customer_id
;

# So if you were going to send an email with a personal touch,
# you would ask Java to grab the first name from SQL then place 
# it inside the email. 