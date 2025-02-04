--total sales and average price per item for Lemon, Rosemary and Chili product lines
SELECT CASE
         WHEN prod_name LIKE 'Lemon%' THEN 'Lemon'
         WHEN prod_name LIKE 'Rosemary%' THEN 'Rosemary'
         WHEN prod_name LIKE 'Chili%' THEN 'Chili'
         ELSE 'Other'
       END AS product_lines,
       SUM(order_total) AS sum_of_orders,
       SUM(order_total) / SUM(quantity) AS price_per_item
FROM sales
WHERE product_lines != 'Other'
GROUP BY product_lines
ORDER BY sum_of_orders DESC;



--orders made by Business customers in top-selling states and all Gift Basket orders
SELECT order_num,
       cust_state,
       cust_type,
       prod_category,
       order_total
FROM sales
WHERE cust_type = 'Business'
  AND cust_state IN ('Texas', 'California', 'Florida')
UNION
SELECT order_num,
       cust_state,
       cust_type,
       prod_category,
       order_total
FROM sales
WHERE prod_category = 'Gift Basket';