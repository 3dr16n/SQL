SELECT cust_state,
	SUM (order_total) AS sum_of_orders,
	COUNT (*) AS order_count,
	AVG(order_total) AS avg_order
FROM sales
GROUP BY cust_state
HAVING avg_order < 200
ORDER BY sum_of_orders DESC;