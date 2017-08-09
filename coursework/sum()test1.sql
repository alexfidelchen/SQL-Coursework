# Using SUM(), Which customer paid us the most?

SELECT customer_id, SUM(amount)
FROM payment
GROUP BY 1 
ORDER BY 2 desc
;
