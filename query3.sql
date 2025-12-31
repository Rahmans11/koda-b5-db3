--Minitask6

--A
SELECT d.first_name, COUNT(m.genre_id)
FROM movies m
JOIN directors d on m.director_id = d.id
GROUP BY d.first_name;

--B
SELECT a.first_name, COUNT(ma.movie_id) AS "number of roles played"
FROM movies_actors ma
JOIN actors a on ma.actor_id = a.id
GROUP BY a.first_name
HAVING COUNT(ma.movie_id) > 5
ORDER BY "number of roles played" DESC;

--C
SELECT d.first_name, COUNT(d.id) AS "number of direction the movie"
FROM movies m
JOIN directors d on m.director_id = d.id
GROUP BY d.first_name
ORDER BY "number of direction the movie" DESC
LIMIT 1;

--D
SELECT extract(year FROM release_date) , 
COUNT(release_date) AS "count release movie every year"
FROM movies
GROUP BY EXTRACT(year FROM release_date) 
ORDER BY "count release movie every year" DESC
LIMIT 1;

--E
SELECT m.title, STRING_AGG(a.first_name, ', ') AS "actor list"
FROM movies_actors ma
JOIN actors a ON ma.actor_id = a.id
JOIN movies m ON ma.movie_id = m.id
GROUP BY m.title;

ROLLBACK;