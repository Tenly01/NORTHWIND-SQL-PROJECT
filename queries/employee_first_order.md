
# Employees' First Order Date

## Problem
You want to find out when each employee handled their first order.

## Goal
Identify the first order date for each employee.

## Query
```sql
WITH employee_first_order AS (
  SELECT e.employee_id, first_name || ' ' || last_name AS employee_name, order_date,
  FIRST_VALUE(order_date) OVER (PARTITION BY e.employee_id ORDER BY order_date) AS first_order_date
  FROM employees AS e
  JOIN orders AS o ON e.employee_id = o.employee_id
  JOIN order_details AS od ON o.order_id = od.order_id
)
SELECT DISTINCT employee_id, employee_name, first_order_date
FROM employee_first_order
WHERE order_date = first_order_date;

