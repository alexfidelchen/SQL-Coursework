SELECT LEFT(payment.payment_date,7) as "Month", SUM(payment.amount) as "Revenue"
FROM payment 
GROUP BY Month
# It's good to select a column in GROUP BY it's select 
# index number if the column name is too long. 
;