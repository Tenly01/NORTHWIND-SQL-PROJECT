# Revenue by Product Category

## Problem
Management wants to calculate total revenue grouped by product category.

## Goal
Summarize the total sales revenue per category for better product portfolio insights.

## Query
```sql
CREATE VIEW revenue_per_category AS
SELECT 
  c.category_id, 
  c.category_name, 
  SUM(od.unit_price * od.quantity * (1 - od.discount)) AS revenue
FROM products AS p
JOIN order_details AS od ON p.product_id = od.product_id
JOIN categories AS c ON p.category_id = c.category_id
GROUP BY c.category_id, c.category_name;
```

![Revenue By Category](../images/revenue_by_category.png)
