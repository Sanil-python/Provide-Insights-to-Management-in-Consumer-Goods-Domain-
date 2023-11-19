/* 4. Follow-up: Which segment had the most increase in unique products
in 2021 vs 2020? The final output contains these fields,
segment
product_count_2020
product_count_2021
difference 
*/

WITH CTE1 AS
(SELECT dp.segment,
COUNT(DISTINCT(product_code)) as twenty_count
FROM dim_product AS dp JOIN fact_sales_monthly AS fsm
USING(product_code)
WHERE fsm.fiscal_year=2020
GROUP BY dp.segment),
CTE2 AS
(SELECT dp.segment,
COUNT(DISTINCT(product_code)) AS twenty_one_count
FROM dim_product AS dp JOIN fact_sales_monthly AS fsm
USING(product_code)
WHERE fsm.fiscal_year=2021
GROUP BY dp.segment)
SELECT cte1.segment AS segment,
CTE1.twenty_count AS product_count_2020,
CTE2.twenty_one_count AS product_count_2021,
(CTE2.twenty_one_count-CTE1.twenty_count) AS difference
FROM CTE1, CTE2 WHERE CTE1.segment=CTE2.segment
ORDER BY difference DESC LIMIT 1;