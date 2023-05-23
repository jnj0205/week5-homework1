--1. How many actors are there with the last name ‘Wahlberg’?
SELECT *
FROM actor
WHERE last_name='Wahlberg';

--answer 2
-------------------------------------------------------------
--2. How many payments were made between $3.99 and $5.99?
SELECT *
FROM payment
WHERE amount BETWEEN '3.99' AND '5.99';

--answer 5607

---3. What films have exactly 7 copies? (search in inventory)
SELECT *
FROM inventory
WHERE film_id =

------------------------------------

---4. How many customers have the first name ‘Willie’?
SELECT *
FROM customer
WHERE first_name='Willie'
--answer 2
----------------------------------------------------

---5. What store employee (get the id) sold the most rentals (use the rental table)?
SELECT COUNT(staff_id) 
FROM rental
GROUP BY rental_id;


----------------------------------------------------
--6. How many unique district names are there?
SELECT COUNT(district)
FROM address;

--answer 603
--------------------------

--7. What film has the most actors in it? (use film_actor table and get film_id)

SELECT COUNT(actor_id)
FROM film_actor
WHERE film_id < actor_id;

--answer 546


--8. From store_id 1, how many customers have a last name ending with ‘es’? (use customer table)\
SELECT *
FROM customer
WHERE last_name LIKE '%es';

--answer 21

-----------------------------------------------------
--9. How many payment amounts (4.99, 5.99, etc.) had a number of rentals above 250 for customers
--with ids between 380 and 430? (use group by and having > 250)

SELECT customer_id, COUNT(*)
FROM payment
WHERE customer_id BETWEEN 380 AND 430
HAVING COUNT(*) >250
ORDER BY rental_id ASC;
--10. Within the film table, how many rating categories are there? And what rating has the most
--movies total?

