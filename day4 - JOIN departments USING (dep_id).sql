-- 2. Write a MySQL query to find the name (first_name, last name), department ID and name of all the employees.
SELECT first_name, last_name, department_id FROM employees
JOIN departments 
USING (department_id)