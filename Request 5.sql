/* 5. Get the products that have the highest and lowest manufacturing
costs. The final output should contain these fields,
product_code
product
manufacturing_cost
*/

SELECT dp.product_code, dp.product,
round(fmc.manufacturing_cost,2) AS manufacturing_cost
FROM dim_product AS dp JOIN fact_manufacturing_cost AS fmc
USING(product_code)
WHERE fmc.manufacturing_cost IN(
(SELECT max(manufacturing_cost) FROM fact_manufacturing_cost)
UNION
(SELECT min(manufacturing_cost) FROM fact_manufacturing_cost))
ORDER BY  fmc.manufacturing_cost DESC;