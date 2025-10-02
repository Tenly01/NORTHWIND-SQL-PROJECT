# Yearly Cumulative Sales Growth

## Problem
The Northwind company lacks visibility into how revenue accumulates throughout the year, making it difficult to identify sales trends, seasonal performance, or growth patterns.

## Goal
Analyze cumulative sales performance per year, based on order revenue, to understand sales growth trends.

## Query
```sql
WITH order_revenue AS (
  SELECT
    o.order_id,
    o.order_date,
    DATE_TRUNC('year', o.order_date) AS order_year,
    SUM(od.unit_price * od.quantity * (1 - od.discount)) AS order_revenue
  FROM orders o
  JOIN order_details od ON o.order_id = od.order_id
  WHERE o.order_date IS NOT NULL
  GROUP BY o.order_id, o.order_date
)
SELECT
  order_date,
  order_year,
  order_revenue,
  SUM(order_revenue) OVER (
    PARTITION BY order_year
    ORDER BY order_date
  ) AS cumulative_sales
FROM order_revenue
ORDER BY order_year, order_date;

