-- Use Sakila database
USE sakila;
USE sakila;
-- 1. Display all available tables
SHOW TABLES;
-- 2. Retrieve all data from actor, film and customer tables
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

-- 3. Retrieve specific columns
-- 3.1 Titles of all films
SELECT title FROM film;
-- 3.2 List of languages used in films (aliased as 'language')
SELECT name AS language FROM language;
-- 3.3 List of first names of all employees
SELECT first_name FROM staff;
-- 4. Retrieve unique release years
SELECT DISTINCT release_year FROM film;

-- 5. Counting records
-- 5.1 Number of stores
SELECT COUNT(*) FROM store;
-- 5.2 Number of employees
SELECT COUNT(*) FROM staff;
-- 5.3 Number of films available
SELECT COUNT(*) FROM film;
-- 5.4 Number of distinct last names of actors
SELECT COUNT(DISTINCT last_name) FROM actor;

-- 6. Retrieve the 10 longest films
SELECT title, length
FROM film
ORDER BY length DESC
LIMIT 10;

-- 7. Filtering techniques
-- 7.1 Actors with first name 'SCARLETT'
SELECT *
FROM actor
WHERE first_name = 'SCARLETT';

-- 7.2 Movies with 'ARMAGEDDON' in the title and duration > 100 minutes
SELECT *
FROM film
WHERE title LIKE '%ARMAGEDDON%'
AND length > 100;
-- 7.3 Number of films that include 'Behind the Scenes'
SELECT COUNT(*)
FROM film
WHERE special_features LIKE '%Behind the Scenes%';