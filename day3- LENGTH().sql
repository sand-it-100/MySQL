-- 16. Write a query to get the length of the employee names (first_name, last_name) from employees table.
SELECT LENGTH(TRIM(CONCAT(FIRST_NAME, LAST_NAME))) FROM employees