/* 6. Generate a report which contains the top 5 customers who
received an average high pre_invoice_discount_pct for the
fiscal year 2021 and in the Indian market. The final output contains
these fields,
customer_code
customer
average_discount_percentage */


SELECT dc.customer_code,
dc.customer,
fpid.pre_invoice_discount_pct AS average_discount_percentage
FROM dim_customer AS dc JOIN fact_pre_invoice_deductions AS fpid
USING(customer_code) WHERE fpid.pre_invoice_discount_pct > 
(SELECT AVG(pre_invoice_discount_pct) FROM fact_pre_invoice_deductions)
AND fpid.fiscal_year=2021 AND dc.market='India'
ORDER BY average_discount_percentage DESC
LIMIT 5;