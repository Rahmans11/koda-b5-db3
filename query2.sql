--Minitask 5
--A
SELECT m.title, m.release_date, m.rating, d.first_name, g.name
FROM movies m
JOIN directors d on m.director_id = d.id
JOIN genres g on m.genre_id = g.id
LIMIT 50;

--B
SELECT m.title, a.first_name, ma.role
FROM movies_actors ma
JOIN actors a on ma.actor_id = a.id
JOIN movies m on ma.movie_id = m.id;