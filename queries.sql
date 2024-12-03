1. - #finding out amount of movies there is in the database per rating
SELECT 
SUM(CASE rating
   WHEN 'R' THEN 1
   ELSE 0
END) AS r,
SUM(CASE rating
   WHEN 'PG' THEN 1
   ELSE 0
END) AS pg,
SUM(CASE rating
   WHEN 'PG-13' THEN 1
   ELSE 0
END) AS pg13
FROM film

2. - #finding average rental rate per movie
SELECT AVG(rental_rate) FROM film;

3. - finding a staff member who handled the most payments
SELECT staff_id, COUNT(amount) FROM payment
GROUP BY staff_id

4. - #finding first 10 paying customers 
SELECT customer_id FROM payment
ORDER BY payment_date
LIMIT 10;

5. - #joining tabels to find customers from California
SELECT district,email FROM address
INNER JOIN customer
ON address.address_id=customer_id
WHERE district='California';
