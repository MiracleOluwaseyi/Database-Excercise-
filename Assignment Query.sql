-- Write a query in SQL to find the name and year of the movies
SELECT mov_title, mov_year
FROM movie;

-- Write a query in SQL to find the year when the movie American Beauty released
select mov_year
from movie
where mov_title = 'American Beauty';

-- Write a query in SQL to find the movie which was released in the year 1999
select mov_title
from movie
where mov_year = 1999;

-- Write a query in SQL to find the movies which was released before 1998
select mov_title
from movie
where mov_year < 1998;

-- Write a query in SQL to return the name of all reviewers and name of movies together in a single list
select rev_name
from reviewer
union
select mov_title
from movie;

-- Write a query in SQL to find the name of all reviewers who have rated 7 or more stars to their rating
select reviewer.rev_name
from reviewer, rating
where rating.rev_id = reviewer.rev_id
and rating.rev_stars>=7 
and reviewer.rev_name IS NOT NULL; 

-- Write a query in SQL to find the titles of all movies that have no ratings
select mov_title
from movie
where mov_id NOT IN (
select mov_id 
from rating);

-- Write a query in SQL to find the name of all reviewers who have rated their ratings with a NULL value
select rev_name
from reviewer
inner join rating USING(rev_id)
where rev_stars IS NULL;

-- Write a query in SQL to find the name of movie and director (first and last names) who directed a movie that casted a role for 'Eyes Wide Shut'
select dir_fname, dir_lname, mov_title
from  director 
natural join movie_direction
natural join movie
natural join movie_cast
where role IS  NOT NULL
and mov_title='Eyes Wide Shut';