# What if I want to know much how revenue was brought
# by users with over 20 rentals?

SELECT count(rpc.customer_id) as "numCustomers", rpc.numRentals, sum(rpc.Revenue)
FROM rentals_per_customer rpc
GROUP BY 2
# Group by number of films rented
# Conclusion: Most of the revenue is coming from people 
# who rent 25 or 26 films. 
;