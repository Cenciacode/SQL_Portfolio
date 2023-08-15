# Show all the information in the movies table 

SELECT *
FROM movies;

# show all the information on the director table

SELECT *
FROM directors;

# Retrieve the titles of all movies in the datase

SELECT title
FROM movies;

 # Show the names of all directors in alphabetical order
 
 SELECT name
 FROM directors
 ORDER BY name ASC;
 
 #  Find all movies released after the year 2010
 
 SELECT title, release_date
 FROM movies
 WHERE release_date > 2010;
 
 
 #  Display movies with a voting average above 5.0 and sort them by vote avarage in descending order
 
 SELECT title, vote_average
 FROM movies
 WHERE vote_average > '5.0'
 ORDER BY vote_average DESC
 
 
# List the movies directed by a specific director, ordered by release year

SELECT name, title, release_date
FROM movies m
JOIN 
directors d ON m.director_id = d.id
ORDER BY release_date;


#  Find the director with the highest vote average movie rating

SELECT name, MAX(vote_average) AS hightest_rating
FROM movies m
JOIN 
directors d ON m.director_id = d.id;

#  Display the names of directors along with the titles of their movies 

SELECT name, title
FROM directors d
JOIN 
movies m ON d.id = m.director_id;

# Find the top 5 directors with the most movies in the dataset

SELECT name, COUNT(title) AS COUNTER
FROM directors d
JOIN 
movies m ON d.id = m.director_id 
GROUP BY name 
ORDER BY COUNTER DESC
LIMIT 5;
 
 



