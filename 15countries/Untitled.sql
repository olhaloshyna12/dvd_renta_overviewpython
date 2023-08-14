--Create a new data-frame where you classify some different countries into some categories that make sense to you 
--(8 countries min, 20 max) in this df there will be two columns, one column will give the country name, the other column will give the classification category.


SELECT c.country, SUM(o.rental_duration) AS total_rental_duration
FROM country c
JOIN city a ON c.country_id = a.country_id
JOIN address p ON a.city_id = p.city_id
JOIN customer d ON p.address_id = d.address_id
JOIN rental r ON d.customer_id = r.customer_id
join inventory i on r.inventory_id = i.inventory_id
join film o on i.film_id = o.film_id
GROUP BY c.country
ORDER BY total_rental_duration DESC
LIMIT 15 ;