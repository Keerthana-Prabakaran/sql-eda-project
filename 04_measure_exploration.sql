/*=========================================================
Objective:
Calculate key business metrics (KPIs) such as total sales,
total quantity sold, average price, number of orders,
number of customers, and number of products.
These measures provide a high-level overview of
business performance.
=========================================================*/

--Find the total sales
SELECT SUM(s.sales_amount) AS total_sales FROM [gold.fact_sales] s

--Find how many items are sold
SELECT SUM(s.quantity) AS total_quantity FROM [gold.fact_sales] s

--Find the average selling price
SELECT AVG(s.price) AS avg_price FROM [gold.fact_sales] s

--Find the total number of orders
SELECT COUNT(s.order_number) AS total_orders FROM [gold.fact_sales] s
SELECT COUNT(DISTINCT s.order_number) AS total_orders FROM [gold.fact_sales] s

--Find total number of products
SELECT COUNT(p.product_name) AS total_products FROM [gold.dim_products] p
SELECT COUNT(DISTINCT p.product_name) AS total_products FROM [gold.dim_products] p

--Find total number of customers
SELECT COUNT(c.customer_key) AS total_customers FROM [gold.dim_customers] c

--Find total number of customers that placed an order
SELECT count(s.customer_key) AS total_ordered_customers FROM [gold.fact_sales] s
SELECT count(DISTINCT s.customer_key) AS total_ordered_customers FROM [gold.fact_sales] s

--Generate a report that shows all key metrics of the business

SELECT 'Total_Sales' AS measure_name, SUM(s.sales_amount) AS measure_value FROM [gold.fact_sales] s
UNION ALL
SELECT 'Total_Quantity',SUM(s.quantity) FROM [gold.fact_sales] s
UNION ALL
SELECT 'Avg_Price', AVG(s.price) FROM [gold.fact_sales] s
UNION ALL
SELECT 'Total Nr. Orders', COUNT(DISTINCT s.order_number) FROM [gold.fact_sales] s
UNION ALL
SELECT 'Total Nr. Products', COUNT(p.product_name) FROM [gold.dim_products] p
UNION ALL
SELECT 'Total Nr. Customers', COUNT(c.customer_key) FROM [gold.dim_customers] c
