/*
 * Use a JOIN to list all films in the "Family" category.
 * Use table category, film_category, and film.
 */

SELECT film.title
FROM film_category
JOIN film on (film.film_id = film_category.film_id)
JOIN category on (film_category.category_id = category.category_id)
WHERE category.name = 'Family';
