/*
 * Find all last names of actors whose last names contain the letters LI (case insensitive).
 * Order results alphabetically.
 */

SELECT last_name
FROM actor
WHERE POSITION ('li' in LOWER (last_name)) > 0
ORDER BY last_name;
