
# Employees with Highest Number of Orders Handled

## Problem
Which employees handled the most customer orders?

## Goal
Identify top employees by number of orders processed.

## Query
```sql
SELECT e.employee_id, e.first_name || ' ' || e.last_name AS employee_name, 
COUNT(DISTINCT od.order_id) AS total_orders
FROM employees AS e
JOIN orders AS o ON e.employee_id = o.employee_id
JOIN order_details AS od ON o.order_id = od.order_id
GROUP BY e.employee_id 
ORDER BY total_orders DESC;

