--Create a time-series plot showing daily total revenue for three different countries with three countries in one plot (you will want matplotlib for this)



SELECT c.country, DATE(r.payment_date) AS payment_date, SUM(r.amount) AS daily_total_revenue
FROM country c
JOIN city a ON c.country_id = a.country_id
JOIN address p ON a.city_id = p.city_id
JOIN customer d ON p.address_id = d.address_id
JOIN payment r ON d.customer_id = r.customer_id
WHERE c.country IN ('Japan', 'China', 'Canada')
GROUP BY c.country, DATE(r.payment_date)
ORDER BY c.country, DATE(r.payment_date);
