/*
 * Find the actor_id of every actor whose first name starts with 'j'.
 * Order the results from low to hi.
 */

SELECT actor_id
FROM actor
WHERE LOWER (SUBSTRING (first_name from 1 for 1)) = 'j'; 
