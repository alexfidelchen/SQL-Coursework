# DISTINCT()
# What if we wanted to know what % of our customers
# are renting films?

# How many distinct renters do we get each month?
# Only count each renter once a month, even if 
# rented multiple times. 

SELECT left(rental.rental_date,7) as "Month", 
	count(rental.rental_id) as "Total rentals",
	count(distinct rental.customer_id) as "Unique Rentals",
	count(rental.rental_id)/count( distinct rental.customer_id) as "Average Rents Per Month"
FROM rental
GROUP BY Month
;

# Conclusion from data: During the summer months, 
# rent more films. 