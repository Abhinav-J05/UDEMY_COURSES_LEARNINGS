--- getting single column from a table

SELECT first_name FROM actors;


SELECT movie_lang FROM movies;


---- alias ---

SELECT movie_lang AS "Movie Lang" FROM movies;

---- order

SELECT
	*
FROM movies
ORDER BY
	movie_name ASC,
	release_date DESC
;




drop table TABLE_DATES