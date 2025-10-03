
# Top Revenue-Generating Customers

## Problem
Who are the top revenue-generating customers?

## Goal
Identify the customers that generate the highest revenue.

## Query
```sql
SELECT 
  c.customer_id, 
  c.company_name, 
  SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_revenue
FROM orders AS o
JOIN customers AS c ON o.customer_id = c.customer_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY c.customer_id, c.company_name
ORDER BY total_revenue DESC
LIMIT 5;
```
## ![Top Customers](../images/top_customers.png)
