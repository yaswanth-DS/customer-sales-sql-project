# using row_number to find top customer
select customer_names,total_spend
from (select
    customers.customer_name as customer_names,
    COALESCE(SUM(orders.amount),0) as total_spend,
    row_number() over (order by COALESCE(SUM(orders.amount),0) desc) as rn
  from customers
  left join orders
    on customers.customer_id = orders.customer_id
  group by customers.customer_name
) t
where rn = 1;
