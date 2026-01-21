-- 4. Write a query to display the name (first_name, last_name) and hire date for all employees who were hired in 1987.
SELECT FIRST_NAME , LAST_NAME HIRE_DATE FROM employees
WHERE DATE(HIRE_DATE) LIKE '1987%'