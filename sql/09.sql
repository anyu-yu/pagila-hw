/*
 * Use a JOIN to display the total amount rung up by each staff member in January of 2020.
 * Use tables staff and payment.
 */

SELECT staff.first_name, staff.last_name, SUM(payment.amount)
FROM staff
JOIN payment ON staff.staff_id = payment.staff_id
AND DATE_PART('year', payment.payment_date) = 2020 AND DATE_PART('month', payment.payment_date) = 1
GROUP BY staff.staff_id
ORDER BY staff.first_name, staff.last_name;
