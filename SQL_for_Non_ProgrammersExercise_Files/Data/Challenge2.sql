SELECT cust_state,
	COUNT (DISTINCT emp_id) AS employee_count
FROM sales
GROUP BY cust_state;

SELECT cust_state,
	COUNT (DISTINCT emp_id) AS employee_count,
	SUM (order_total) AS sum_of_orders
FROM sales
GROUP BY cust_state
ORDER BY sum_of_orders DESC;

SELECT cust_state,
	COUNT (DISTINCT emp_id) AS employee_count,
	SUM (order_total) AS sum_of_orders
FROM sales
WHERE cust_type = 'Business'
GROUP BY cust_state
HAVING employee_count = 6
	AND sum_of_orders > 40000
ORDER BY sum_of_orders DESC;