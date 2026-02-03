# total customer
SELECT COUNT(*) AS total_customers
FROM customers;

# total orders
SELECT COUNT(*) AS total_orders
FROM orders;

#total sales
SELECT SUM(amount) AS total_sales
FROM orders;

# average order value
SELECT AVG(amount) AS avg_order_value
FROM orders;



