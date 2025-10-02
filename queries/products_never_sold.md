
# Products Never Ordered

## Problem
Some products were never included in any order.

## Goal
List all products that have never been ordered.

## Query
```sql
SELECT product_name
FROM products AS p
LEFT JOIN order_details AS od ON p.product_id = od.product_id
WHERE od.product_id IS NULL;

