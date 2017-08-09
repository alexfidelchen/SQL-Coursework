SELECT left(film.title,1) as "Letter", count(film.title)
FROM film
WHERE left(film.title,1) in ("A","B","C")
	# left(film.title,1) = "A", With you can set the 
	# column to be equal to one element. 
GROUP BY Letter
;