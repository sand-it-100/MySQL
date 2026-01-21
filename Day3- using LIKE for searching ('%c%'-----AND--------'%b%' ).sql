-- 5. Write a query to display the first_name of all employees who have both "b and "c" in their first name.

SELECT FIRST_NAME FROM employees
WHERE FIRST_NAME LIKE '%n%'
AND FIRST_NAME LIKE '%v%'