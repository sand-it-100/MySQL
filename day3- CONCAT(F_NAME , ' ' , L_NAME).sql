-- 14. Write a query to get the names (for example Ellen Abel, Sundar Ande etc.) of all the employees from employees table.
SELECT CONCAT(FIRST_NAME, " " ,LAST_NAME) AS 'name' FROM employees