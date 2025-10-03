# Northwind SQL Analytics Project

## Project Overview
This project analyzes the **Northwind Traders** dataset to uncover business insights such as top customers, supplier contributions, employee performance, and sales trends.  
The analysis was conducted using **PostgreSQL**, and the results were visualized with **Excel pivot tables and dashboards**.

---

##  Objectives
- Analyze sales performance and revenue distribution.
- Identify high/low-performing products and customers.
- Evaluate employee productivity and supplier contribution.
- Detect inefficiencies (e.g., shipping times, unsold products).
- Use SQL techniques (CTEs, Window Functions, Views).
- Build an interactive **Excel Dashboard** for stakeholders.

---

##  Business Questions Answered
1. Who are the top revenue-generating customers?  
2. Which suppliers contribute the most to product volume?  
3. Which employees process the most orders?  
4. How efficient are our shippers?  
5. What are the monthly sales trends for 1997?  
6. Which countries generate the highest average order value?  
7. Which products/customers had no orders?  

---

## Tools & Technologies
- **PostgreSQL** – Data querying & analytics  
- **SQL (CTEs, Window Functions, Views)** – Advanced analysis  
- **Excel** – Pivot tables, slicers, and dashboard visualization  

---

## Dashboard
This dashboard visualizes the results of **7 SQL queries**, exported into Excel and transformed into pivot tables and charts.  

![Dashboard Preview](images/NORTHWIND_DASHBOARD.png)  

---

##  Dataset
The project uses the **Northwind Traders** relational database, which contains customer orders, product sales, suppliers, shippers, and employee information.  

-  Source: [Northwind Database on Kaggle](https://www.kaggle.com/datasets/ahmedhamada0/northwind-database)  
-  Format: PostgreSQL (imported into pgAdmin / PostgreSQL for analysis)


##  Key Insights
- A small set of customers drives most revenue → loyalty programs recommended.  
- Certain suppliers are critical for inventory → maintain strong partnerships.  
- Few employees generate most sales → recognize and reward top performers.  
- Shipping efficiency varies by shipper → prioritize faster carriers.  
- Sales show seasonality → plan promotions and staffing accordingly.  
- Some products/customers are inactive → opportunity for re-engagement.  

---

##  Documentation
Full project documentation available here:  
[NORTHWIND_SQL_ANALYTICS PDF](docs/NORTHWIND_SQL_ANALYTICS.pdf)
