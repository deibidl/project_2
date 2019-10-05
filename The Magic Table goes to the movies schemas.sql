-- DATA ENGINEERING:
--Creating empty tables to import data from pandas
-- 1. Create All Movies Table
CREATE TABLE all_movies(
    budget FLOAT NOT NULL,
    imdb_id VARCHAR(100) NOT NULL,
    title VARCHAR(100) NOT NULL,
    release_date VARCHAR(100) NOT NULL,
    revenue FLOAT NOT NULL,
    production_companies VARCHAR(500) NOT NULL,
	PRIMARY KEY (imdb_id)
);


-- 2. Create table with Oscar Nominated Movies
SELECT * FROM all_movies;

CREATE TABLE best_movies(
    release_year VARCHAR(100) NOT NULL,
    title VARCHAR(100) NOT NULL,
    production_companies VARCHAR(500) NOT NULL,
    win VARCHAR(100) NOT NULL, 
    imdb_id VARCHAR(100) NOT NULL,
    release_date VARCHAR(100) NOT NULL,
	FOREIGN KEY (imdb_id) REFERENCES all_movies(imdb_id)
);

-- 3. Create Table of Reviews/Ratings from 270,000 users
SELECT * FROM all_movies;

CREATE TABLE ratings(
    imdb_id VARCHAR(100) NOT NULL,
    rating FLOAT NOT NULL,
    reviewer_id VARCHAR(100) NOT NULL,
    FOREIGN kEY (imdb_id) REFERENCES all_movies(imdb_id)
);
