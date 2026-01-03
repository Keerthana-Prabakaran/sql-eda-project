# SQL Exploratory Data Analysis (EDA) Project

## 📌 Project Overview

This project focuses on performing **Exploratory Data Analysis (EDA) using SQL** to understand the structure, quality, and patterns within a sales data warehouse.

The goal of this project is to build a **strong analytical foundation** before moving into advanced analytics and reporting.  
It demonstrates how SQL can be used not just for querying data, but for **systematic data understanding and validation**.

---

## 🎯 Objectives of the EDA

The key objectives of this exploratory analysis are:

- Understand database structure and table relationships
- Explore dimensions and measures in the dataset
- Analyze time coverage and data completeness
- Validate data quality and consistency
- Identify early trends and patterns
- Prepare the dataset for advanced analytics


## 🗂️ Project Structure

sql-eda-project
│
├── 01_database_exploration.sql
├── 02_dimension_exploration.sql
├── 03_date_exploration.sql
├── 04_measure_exploration.sql
├── 05_magnitude_exploration.sql
├── 06_ranking_exploration.sql

## 📁 File Descriptions

### 01_database_exploration.sql
- Explores database schemas and tables
- Identifies fact and dimension tables
- Checks row counts and table availability
- Understands overall data model structure

### 02_dimension_exploration.sql
- Analyzes dimension tables such as customers and products
- Identifies unique values and categories
- Checks for missing or inconsistent dimension data

### 03_date_exploration.sql
- Examines date ranges in the dataset
- Identifies earliest and latest transaction dates
- Evaluates data coverage across years and months
- 
### 04_measure_exploration.sql
- Explores key numeric measures such as:
  - Sales amount
  - Quantity
  - Order counts
- Validates aggregations and distributions
  
### 05_magnitude_exploration.sql
- Analyzes the scale and spread of data
- Identifies high-value and low-value records
- Detects potential outliers in sales and quantity

### 06_ranking_exploration.sql
- Ranks entities such as products and customers
- Identifies top and bottom performers
- Prepares ranking logic used later in advanced analytics

## 🧠 SQL Techniques Used

- Aggregations (`SUM`, `COUNT`, `AVG`)
- DISTINCT analysis
- GROUP BY and HAVING clauses
- Basic joins between fact and dimension tables
- Ranking logic
- Date functions
- Data validation queries

## 📊 Key Questions Explored

- What tables and dimensions are available in the database?
- What is the overall size and shape of the data?
- What time period does the data cover?
- Are there missing or inconsistent values?
- Which products and customers appear most frequently?
- How are sales and quantities distributed?

## 🔄 Relationship to Advanced Analytics

This EDA project serves as the **foundation** for the Advanced Analytics project by:

- Validating data readiness
- Identifying reliable dimensions and measures
- Establishing trust in the dataset
- Informing the design of advanced analytical queries

## 🛠️ Tools & Technologies

- SQL Server (T-SQL)
- SQL Server Management Studio (SSMS)
- Relational Data Warehouse
- GitHub for version control and portfolio presentation

## ▶️ How to Use This Project

1. Load the dataset into SQL Server
2. Execute SQL files in numerical order
3. Review outputs to understand data structure and patterns
4. Use insights to design advanced analytical queries

## ⭐ Final Note

This project demonstrates a **methodical and business-aware approach to exploratory data analysis using SQL**.  
It highlights the importance of understanding data before performing advanced analytics or building reports.


