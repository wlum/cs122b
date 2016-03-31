DROP DATABASE IF EXISTS moviedb;
CREATE DATABASE moviedb;
USE moviedb;

CREATE TABLE movies(
id INT NOT NULL AUTO_INCREMENT,
title VARCHAR(100) NOT NULL,
year INT NOT NULL, 
director VARCHAR(100) NOT NULL, 
PRIMARY KEY (id)
);

CREATE TABLE stars(
id INT NOT NULL, 
first_name VARCHAR(50) NOT NULL, 
last_name VARCHAR(50) NOT NULL, 
dob DATE, 
photo_url VARCHAR(200), 
PRIMARY KEY(id)
); 

CREATE TABLE stars_in_movies(
star_id INT, 
movie_id INT, 
FOREIGN KEY (star_id) REFERENCES stars(id), 
FOREIGN KEY (movie_id) REFERENCES movies(id)
);