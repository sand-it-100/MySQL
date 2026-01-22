-- 5. Write a MySQL query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
SELECT e.first_name, e.last_name, e.hire_date FROM employees e
JOIN employees emp
ON emp.first_name = 'John'
WHERE emp.hire_date < e.hire_date