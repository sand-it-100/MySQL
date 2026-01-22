-- 4. Write a MySQL query to find the employee id, name (last_name) along with their manager_id and name (last_name).
SELECT e.last_name, e.employee_id ,m.manager_id FROM employees e
JOIN employees m
ON e.manager_id = m.employee_id