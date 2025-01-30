SELECT r.region, s.prod_category,
       SUM(s.order_total) AS total_sales
FROM regions AS r
INNER JOIN sales AS s
ON r.state = s.cust_state
WHERE s.prod_category = 'Olive Oil'
GROUP BY r.region
ORDER BY total_sales DESC;

SELECT r.region, s.prod_category,
       SUM(s.order_total) AS total_sales
FROM regions AS r
INNER JOIN sales AS s
ON r.state = s.cust_state
WHERE s.prod_category = 'Olive Oil' 
    AND s.cust_type = 'Business'
GROUP BY r.region
ORDER BY total_sales DESC;
