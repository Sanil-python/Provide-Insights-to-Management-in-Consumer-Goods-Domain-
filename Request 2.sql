/* 2. What is the percentage of unique product increase in 2021 vs 2020?
The final output contains these fields,
unique_products_2020
unique_products_2021
percentage_chg */

WITH cte1 AS
(SELECT count(DISTINCT(product_code)) AS twenty_prod
FROM fact_sales_monthly WHERE fiscal_year=2020),
cte2 AS(SELECT count(DISTINCT(product_code)) AS twenty_one_prod
FROM fact_sales_monthly WHERE fiscal_year=2021)
SELECT cte1.twenty_prod AS unique_products_2020,
cte2.twenty_one_prod AS unique_products_2021,
ROUND((twenty_one_prod-twenty_prod)*100/twenty_prod,2) AS percentage_chng
FROM cte1, cte2