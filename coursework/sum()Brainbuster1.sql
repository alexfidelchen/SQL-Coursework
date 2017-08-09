SELECT customer.store_id as "Store Number", SUM(payment.amount) as "Pay Amount"
FROM customer, payment
WHERE customer.customer_id = payment.customer_id
GROUP BY customer.store_id
; 

# Use where to connect tables. 
# Historically, Store Number 1 has made more money. 
# The way that I did it is that I calculated the amount of money the customers at 
# each store gave to their store. 