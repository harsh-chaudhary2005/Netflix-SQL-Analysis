CREATE DATABASE netflix_project;
CREATE TABLE netflix (
    show_id VARCHAR(20),
    type VARCHAR(20),
    title TEXT,
    director TEXT,
    cast TEXT,
    country TEXT,
    date_added TEXT,
    release_year INT,
    rating VARCHAR(20),
    duration VARCHAR(20),
    listed_in TEXT,
    description TEXT
);
SELECT * FROM netflix LIMIT 5; #VERIFYING DATA
SELECT COUNT(*) FROM netflix;  #Start Analysis Queries
   #Movies Only
SELECT *
FROM netflix
WHERE type = 'Movie';
   
   #TV Shows Only
SELECT *
FROM netflix
WHERE type = 'TV Show';
    
    #Content Released After 2020
SELECT title, release_year
FROM netflix
WHERE release_year > 2010;
	#Top Countries
SELECT country, COUNT(*) AS total_content
FROM netflix
GROUP BY country
ORDER BY total_content DESC
LIMIT 10;
    #Most Common Ratings
SELECT rating, COUNT(*) AS total
FROM netflix
GROUP BY rating
ORDER BY total DESC;
	#Movies vs TV Shows
SELECT type, COUNT(*) AS total
FROM netflix
GROUP BY type;