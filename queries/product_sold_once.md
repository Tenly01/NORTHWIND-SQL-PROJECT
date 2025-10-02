
# Products Sold Only Once Per Order

## Problem
Some products are always sold in quantities of 1, suggesting low demand or niche use.

## Goal
Identify products that are only ever sold one at a time.

## Query
```sql
SELECT p.product_id, p.product_name, COUNT(*) AS times_sold
FROM products AS p
JOIN order_details AS od ON p.product_id = od.product_id
GROUP BY p.product_id, p.product_name
HAVING MIN(od.quantity) = 1 AND MAX(od.quantity) = 1;
```

![Products Sold Once](../images/product_sold_once.png)
