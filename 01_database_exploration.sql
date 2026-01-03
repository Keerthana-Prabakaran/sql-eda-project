/*=========================================================
Objective:
Explore the database structure and identify available
tables, views, schemas, and column-level metadata.
This helps in understanding the overall data warehouse
layout before performing any analysis.
=========================================================*/

--Explore all the tables in the database.

SELECT * FROM
INFORMATION_SCHEMA.TABLES


--Explore all the columns in the database.

SELECT * FROM
INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'dbo'
AND TABLE_NAME = 'gold.dim_customers'

