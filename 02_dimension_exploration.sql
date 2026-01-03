
/* =========================================================
Objective:
Analyze dimension tables to understand descriptive
attributes related to customers and products.
This includes exploring categories, demographics,
and identifying unique and grouped dimension values.
=========================================================*/

--Explore all countries our customers come from.

SELECT DISTINCT country from [gold.dim_customers];

--Explore all categories "The Major Division"

SELECT DISTINCT category, subcategory, product_name from [gold.dim_products]
WHERE category IS NOT NULL
ORDER BY 1, 2, 3