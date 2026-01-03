/*=========================================================
Objective:
Explore date-related information in the fact table to
understand the time range of the dataset.
This helps in identifying the first and last order dates
and the overall historical coverage of sales data.
=========================================================*/


--Find the first and last order
--How many years of sale are available

SELECT 
MIN(s.order_date) AS first_order,
MAX(s.order_date) AS last_order,
DATEDIFF(year, MIN(s.order_date), MAX(s.order_date)) AS order_range_year
FROM [gold.fact_sales] s;

--Find the youngest and oldest customer

SELECT
MIN(c.birthdate) AS oldest_customer,
DATEDIFF(YEAR, MIN(c.birthdate), GETDATE()) AS oldest_age,
MAX(c.birthdate) AS youngest_customer,
DATEDIFF(YEAR, Max(c.birthdate), GETDATE()) AS youngest_age
FROM [gold.dim_customers] c