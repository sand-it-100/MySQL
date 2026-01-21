-- 2. Write a query to display the name (first_name, last_name) and department ID of all employees in departments 90 or 60 in ascending order.
SELECT FIRST_NAME, LAST_NAME, DEPARTMENT_ID FROM employees
WHERE DEPARTMENT_ID IN (90,60)
ORDER BY DEPARTMENT_ID ASC