--Carry out a sentiment analysis on movie descriptions adding another column to the data frame that provides a sentiment classification. 
--This can be based on a “rules based system” that you coded OR inference from a LLM such as using the API for chatgpt.

SELECT c.description, SUM(p.amount) AS total_amount
FROM film c
join inventory i on c.film_id = i.film_id
JOIN rental r ON i.inventory_id = r.inventory_id
JOIN payment p ON r.rental_id = p.rental_id
GROUP BY c.description
ORDER BY total_amount DESC;