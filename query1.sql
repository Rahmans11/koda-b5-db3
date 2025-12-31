-- A
SELECT id,title,release_date,rating,director_id,genre_id 
FROM movies 
WHERE extract(year FROM release_date) = 2020;

-- B
SELECT first_name 
FROM actors 
WHERE first_name LIKE '%s';

-- C
SELECT id,title,release_date,rating,director_id,genre_id 
FROM movies 
WHERE rating >=4 AND rating <=8 
AND extract(year FROM release_date) >= 2004 AND extract(year FROM release_date) <= 2010;