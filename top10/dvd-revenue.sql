--Do an analysis to show which actors are bringing in the most revenue (top 10 ranked)


SELECT c.actor_id, SUM(k.amount) AS total_revenue
FROM actor c
JOIN film_actor a ON c.actor_id = a.actor_id
JOIN film p ON a.film_id = p.film_id
JOIN inventory d ON p.film_id = d.film_id
JOIN rental r ON d.inventory_id = r.inventory_id
JOIN payment k ON r.rental_id = k.rental_id
GROUP BY c.actor_id
ORDER BY total_revenue DESC
LIMIT 10 ;