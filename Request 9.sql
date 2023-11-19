/* 9. Which channel helped to bring more gross sales in the
fiscal year 2021 and the percentage of contribution?
The final output contains these fields,
channel
gross_sales_mln
percentage
*/

WITH cte AS
(SELECT dc.channel,
ROUND(SUM(fgp.gross_price*fsm.sold_quantity),2) AS total_sales
FROM fact_sales_monthly AS fsm JOIN fact_gross_price AS fgp
USING(product_code) JOIN dim_customer AS dc USING(customer_code)
WHERE fsm.fiscal_year=2021
GROUP BY dc.channel)
SELECT cte.channel,
ROUND(total_sales/1000000,2) AS gross_sales_mln,
ROUND(total_sales/(SUM(total_sales) OVER())*100,2) AS percentage 
FROM cte
ORDER BY gross_sales_mln DESC
LIMIT 1;