--Create a visual in the notebook that shows how much revenue is coming from different countries to the DVD store (you will want matplotlib).


SELECT c.country, d.store_id AS store, SUM(r.amount) AS revenue
FROM country c
JOIN city a ON c.country_id = a.country_id
JOIN address p ON a.city_id = p.city_id
JOIN customer d ON p.address_id = d.address_id
JOIN payment r ON d.customer_id = r.customer_id
GROUP BY c.country, d.store_id
ORDER BY c.country, d.store_id;
