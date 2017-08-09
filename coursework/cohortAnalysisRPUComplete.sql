drop temporary table if exists cohort;
create temporary table cohort
SELECT 
	date_format(first_rental.firstRental,'%Y%m') as "cohort_formatted",
	date_format(rental.rental_date,'%Y%m') as "rental_date_formatted",
	cohort_size.cohortSize,
	SUM(payment.amount) as monthly_revenue,
	SUM(payment.amount)/cohort_size.cohortSize as "Revenue_Per_User"
FROM rental
	JOIN first_rental ON rental.customer_id = first_rental.customer_id
	JOIN cohort_size ON cohort_size.month = left(first_rental.firstRental,7) 
	JOIN payment ON payment.rental_id = rental.rental_id
GROUP BY 1,2
;

# For each row, there is a element that tells 
# me how big it's cohort is. 