/* 7. Get the complete report of the Gross sales amount for the customer
“Atliq Exclusive” for each month. This analysis helps to get an idea 
of low and high-performing months and take strategic decisions.
The final report contains these columns:
Month
Year
Gross sales Amount
*/

select concat(monthname(fsm.date),' (',year(fsm.date),')') as mnth,
fsm.fiscal_year as fiscal_year,
ROUND(SUM(fgp.gross_price*fsm.sold_quantity), 2) AS Gross_sales_Amount
from fact_sales_monthly as fsm join dim_customer as dc
using(customer_code) join fact_gross_price as fgp
using(product_code)
where dc.customer='Atliq Exclusive'
group by mnth, fsm.fiscal_year
order by fsm.fiscal_year;