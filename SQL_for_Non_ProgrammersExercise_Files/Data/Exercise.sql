SELECT order_total
FROM sales
Group by DISTINCT cust_state
ORDER BY order_total DESC;
