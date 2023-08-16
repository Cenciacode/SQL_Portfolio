

# Count the Number of Movies

select count (*) as total_movies
from movies;

# Calculate Average Movie Rating

select avg(vote_average) as average_movie
from movies;

# Highest Rated Movie

select title, max(vote_average) as Hightest_rated
from movies;


# Average Rating by Director

select name director, avg(vote_average) as average_rating
from movies m
join 
directors d on m.director_id = d.id
group by name;

# Number of Movies per Director

select name director, count(title) as total_movies
from movies m 
join 
directors d on m.director_id = d.id
group by name
order by total_movies desc;

# Number of Movies Released per Year

select release_date, count(*) as total 
from movies
group by release_date
order by total desc;


#  Highest Rated Movie by Director

select name director, title movie,  max(vote_average) as rate 
from movies m
join
directors d on m.director_id = d.id
group by name
order by rate desc;

