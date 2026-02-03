# CASE WHEN CONCEPT
SELECT customers.customer_name,COUNT(orders.order_id) AS order_count,
  CASE
    WHEN COUNT(orders.order_id) > 1 THEN 'repeat customer'
    ELSE 'one time'
  END AS customer_type
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
GROUP BY customers.customer_name;
