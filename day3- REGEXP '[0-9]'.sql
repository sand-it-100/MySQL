-- 17. Write a query to check if the first_name fields of the employees table contains numbers.
SELECT * FROM employees
WHERE FIRST_NAME REGEXP '[0-9]'