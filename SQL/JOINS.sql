# inner join
SELECT customers.customer_name,orders.order_id,orders.amount
FROM customers
INNER JOIN orders
ON customers.customer_id = orders.customer_id;

#left join
SELECT customers.customer_name,orders.order_id,orders.amount
FROM customers 
LEFT JOIN orders 
ON customers.customer_id = orders.customer_id;

# to find null values
SELECT customers.customer_name
FROM customers
LEFT JOIN orders
ON customers.customer_id = orders.customer_id
WHERE orders.order_id IS NULL;




