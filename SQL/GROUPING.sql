SELECT city,COUNT(*) AS customer_count
FROM customers
GROUP BY city;
