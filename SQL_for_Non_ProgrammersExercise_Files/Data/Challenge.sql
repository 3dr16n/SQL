SELECT DISTINCT cust_type
FROM sales;

SELECT order_num, order_type, cust_type, order_total
FROM sales
ORDER BY order_total DESC;

SELECT order_num, order_type, cust_type, order_total
FROM sales
WHERE cust_state IN ('Georgia', 'North Carolina')
ORDER BY order_total DESC
LIMIT 20;