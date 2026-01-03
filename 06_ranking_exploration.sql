/*=========================================================
Objective:
Perform ranking analysis to identify top and bottom
performers across products and customers.
This helps in recognizing high-value customers,
best-selling products, and underperforming segments.
=========================================================*/

--Which 5 products generate the highest revenue?
DECLARE @N INT = 5;
SELECT
product_name,
total_revenue
FROM (
	SELECT 
	p.product_name,
	SUM(s.sales_amount) AS total_revenue,
	DENSE_RANK() OVER(ORDER BY SUM(s.sales_amount) DESC) AS rn
	FROM [gold.fact_sales] s
	LEFT JOIN [gold.dim_products] p
		ON s.product_key = p.product_key
	GROUP BY p.product_name) AS ranked
WHERE rn <= @N

--What are the 5 worst performing products in terms of sale?
DECLARE @A INT = 5;
SELECT
product_name,
total_revenue
FROM (
	SELECT 
	p.product_name,
	SUM(s.sales_amount) AS total_revenue,
	DENSE_RANK() OVER(ORDER BY SUM(s.sales_amount)) AS rn
	FROM [gold.fact_sales] s
	LEFT JOIN [gold.dim_products] p
		ON s.product_key = p.product_key
	GROUP BY p.product_name) AS ranked
WHERE rn <= @A

--Find the top-10 customers who have the generated the highest revenue.
SELECT TOP 10
c.customer_key,
c.first_name,
c.last_name,
SUM(s.sales_amount) AS total_revenue
FROM [gold.fact_sales] s
LEFT JOIN [gold.dim_customers] c
	ON s.customer_key = c.customer_key
GROUP BY c.customer_key,
		 c.first_name,
		 c.last_name
ORDER BY total_revenue DESC;

--Find the last 3 customers with the fewest orders placed.
DECLARE @B INT = 2;
WITH cte_total_orders AS (
SELECT
c.customer_key,
c.first_name,
c.last_name,
COUNT(DISTINCT order_number) AS total_orders
FROM [gold.fact_sales] s
LEFT JOIN [gold.dim_customers] c
ON s.customer_key = c.customer_key
GROUP BY c.customer_key,
		 c.first_name,
		 c.last_name
)

,cte_ranked AS (
SELECT 
customer_key,
first_name,
last_name,
total_orders,
DENSE_RANK() OVER(ORDER BY total_orders) AS rn
FROM cte_total_orders)

SELECT
customer_key,
first_name,
last_name,
total_orders
FROM cte_ranked
WHERE rn = @B;