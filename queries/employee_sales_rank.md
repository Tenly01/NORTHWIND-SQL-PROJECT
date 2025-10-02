
---

### 3. `queries/employee_sales_rank.md`
```markdown
# Top-Selling Employees by Year

## Problem
Which employees generated the highest total sales each year?

## Goal
Rank employees by yearly sales performance.

## Query
```sql
WITH employee_year_sales AS (
  SELECT e.employee_id, first_name || ' ' || last_name AS employee_name,
  SUM(od.unit_price * od.quantity * (1 - od.discount)) AS total_sales,
  EXTRACT(YEAR FROM order_date) AS yearly_sales
  FROM employees AS e
  JOIN orders AS o ON e.employee_id = o.employee_id
  JOIN order_details AS od ON od.order_id = o.order_id
  GROUP BY EXTRACT(YEAR FROM order_date), e.employee_id
),
ranked_sales AS (
  SELECT *, 
         RANK() OVER (PARTITION BY yearly_sales ORDER BY total_sales DESC) AS employee_rank
  FROM employee_year_sales
)
SELECT *
FROM ranked_sales
WHERE employee_rank = 1;

