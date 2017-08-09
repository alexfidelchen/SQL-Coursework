# The expressions can get really long so you can
# nickname the tables to shorten the expressions.
# To nickname the tables, write the table name 
# then write your nickname immediately after it 
# syntax: [table name] [table nickname]
SELECT f.title, c.name, l.name
FROM film f, film_category fc, category c, language l
WHERE f.film_id = fc.film_id
	and f.language_id = l.language_id
	and fc.category_id = c.category_id
;