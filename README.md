Introduction
Atliq Hardwares (imaginary company) is one of the leading computer hardware producers in India and well expanded in other countries too. However, the management noticed that they do not get enough insights to make quick and smart data-informed decisions. They want to expand their data analytics team by adding several junior data analysts. Tony Sharma, their data analytics director wanted to hire someone who is good at both tech and soft skills. Hence, he decided to conduct a SQL challenge which will help him understand both the skills.

Task
The task is to build SQL query to answer 10 ad hoc requests for which the business needs insights and to show the insights to the top-level management.


Note: Ad hoc is a Latin phrase that literally translates to 'for this' or 'for this situation'. Ad hoc requests are requests come unexpectedly without any prior planning. These requests often require immediate action.

Data
The database have 6 tables.
There are 2 dimension tables and 4 fact tables.
The dimension tables are:
dim_customer: contains customer-related data
dim_product: contains product-related data
The fact tables are:
fact_gross_price: contains gross price information for each product
fact_manufacturing_cost: contains the cost incurred in the production of each product
fact_pre_invoice_deductions: contains pre-invoice deductions information for each product
fact_sales_monthly: contains monthly sales data for each product.

Note: The queries required to build the database were already provided.

Tools
MySQL

Approach
Created the database and tables using the script provided.
Analyzed the data and build SQL queries to answer the 10 ad hoc requests using MySQL

SQL Queries
Data Manipulation
Ad hoc requests SQL Queries

Key Insights
The customer 'Atliq Exclusive' operates in 3 regions - APAC, EU, NA. In APAC region it operates its business in - Australia, Bangladesh, India, Indonesia, Japan, New Zealand, Philippines and South Korea.
89 unique products were added in 2021. As a result, the percentage of unique product increase in 2021 vs. 2020 is 36.33%.
The products are divided into 6 segments - Notebook, Accessories, Peripherals, Desktop, Storage and Networking.
Notebook, Accessories and Peripherals are the top 3 segments by unique product count.
Accessories segment has the most increase and Networking segment has the least increase in unique products in 2021 vs 2020.
AQ HOME Allin1 Gen 2 has highest manufacturing cost and AQ Master wired x1 Ms has lowest manufacturing cost.
Top 5 customers who received an average high pre_invoice_discount_pct for the fiscal year 2021 and in the Indian market are - Flipkart, Viveks, Ezone, Croma, Amazon.
For the fiscal year, 2020, March was the least performing month and November was the highest performing month.
Overall for 2019, 2020 and 2021, April was the least performing month and November was the highest performing month.
Quarter 1 ('September', 'October', 'November') got the maximum total sold quantity.
Quarter 3 ('March', 'April', 'May') got the minimum total sold quantity.
Retailer channel helped to bring most gross sales i.e., 73.22%, in the fiscal year 2021.
For fiscal year 2021, N & S division have the highest total sold quantity with products AQ Pen Drive 2 IN 1, AQ Pen Drive DRC (Plus) and AQ Pen Drive DRC (Premium) being the top 3 products that have a high total sold quantity.
