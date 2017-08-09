# Select film, film genre and film language in one query
SELECT film.title, category.name, language.name
FROM film, film_category, category, language
WHERE film.film_id = film_category.film_id
	and film.language_id = language.language_id
	and film_category.category_id = category.category_id
;