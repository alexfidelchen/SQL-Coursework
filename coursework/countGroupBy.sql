SELECT count(rating) 
FROM film
group by rating
;
# So SQL selects the count() function and rating. 
# count(title) returns the number of elements in 
# title and group by groups those elements. 
# When count() and group are used together, 
# group by returns groups the the of elements 
# returned by count(). 

# So above says, count and give me the number of
# elements in rating, then split the number by
# group. 