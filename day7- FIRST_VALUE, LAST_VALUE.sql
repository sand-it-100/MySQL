-- Write a MySQL query to find the first and last sale date for each customer using a window function.
SELECT customer_id, sales_date, 
	FIRST_VALUE(sale_date) OVER(PARTITION BY customer_id ORDER BY sales_date ) as first_date,
    LAST_VALUE(sale_date) OVER(PARTITION BY customer_id ORDER BY sales_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING ) AS last_date
    FROM sales