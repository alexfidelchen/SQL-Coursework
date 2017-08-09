-- Customer's First Rental
drop temporary table if exists first_rental;
create temporary table first_rental
SELECT 
	rental.customer_id, min(rental.rental_date) as "firstRental"
	-- min(rental_date) is the first rental date. 
FROM rental
GROUP BY 1
# Group by customer_id, i.e. give the first rental date of 
# each customer. 

;

-- What's the size of each cohort with cohorts being organized
-- by month?
drop temporary table if exists cohort_size;
create temporary table cohort_size
SELECT 
	left(firstRental,7) as "Month", count(firstRental) as "cohortSize"
FROM 
	first_rental
GROUP BY 1
;

#remove temporary table if exists
SELECT rental.`*`, left(first_rental.firstRental,7) as "cohort", cohort_size.cohortSize, payment.amount
FROM rental
	JOIN first_rental ON rental.customer_id = first_rental.customer_id
	JOIN cohort_size ON cohort_size.month = left(first_rental.firstRental,7) 
	JOIN payment ON payment.rental_id = rental.rental_id
;