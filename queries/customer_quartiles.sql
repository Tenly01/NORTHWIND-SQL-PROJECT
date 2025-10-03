
# Customer Revenue Quartiles

## Problem
You want to segment customers into quartiles based on their total revenue for tailored marketing.

## Goal
Classify customers into four quartiles by revenue contribution.

## Query
```sql
WITH total_customer_revenue AS (
  SELECT c.customer_id, c.company_name, SUM(unit_price * quantity * (1 - discount)) AS total_revenue
  FROM customers AS c
  JOIN orders AS o ON c.customer_id = o.customer_id
  JOIN order_details AS od ON o.order_id = od.order_id
  GROUP BY c.customer_id, c.company_name
),
grouped_customers AS (
  SELECT *, NTILE(4) OVER (ORDER BY total_revenue DESC) AS sales_quartiles
  FROM total_customer_revenue
)
SELECT *,
CASE
    WHEN sales_quartiles = 1 THEN 'Top Customers'
    WHEN sales_quartiles = 2 THEN 'High Value Customers'
    WHEN sales_quartiles = 3 THEN 'Middle Value Customers'
    WHEN sales_quartiles = 4 THEN 'Low Value Customers'
END AS customer_segment
FROM grouped_customers;
```

![Customer Quartiles](../images/customer_quartiles.png)
