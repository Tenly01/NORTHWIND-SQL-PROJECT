
# Monthly Sales Trend for 1997

## Problem
What were the monthly sales trends in 1997?

## Goal
Analyze revenue trends month by month in 1997.

## Query
```sql
SELECT
  EXTRACT(MONTH FROM o.order_date) AS month_number,
  TO_CHAR(o.order_date, 'FMMonth') AS month_name, 
  SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_revenue
FROM orders AS o
JOIN order_details AS od ON o.order_id = od.order_id
WHERE EXTRACT(YEAR FROM o.order_date) = 1997
GROUP BY EXTRACT(MONTH FROM o.order_date), TO_CHAR(o.order_date, 'FMMonth')
ORDER BY EXTRACT(MONTH FROM o.order_date);

