SELECT order_total, cust_state
FROM sales
Group by cust_state
ORDER BY order_total DESC;
