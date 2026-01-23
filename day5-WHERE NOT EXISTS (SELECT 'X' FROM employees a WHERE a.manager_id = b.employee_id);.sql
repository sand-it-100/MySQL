-- 12. Write a MySQL query to find the name (first_name, last_name) of the employees who are not supervisors.

SELECT b.first_name,b.last_name 
FROM employees b 
WHERE NOT EXISTS (SELECT 'X' FROM employees a WHERE a.manager_id = b.employee_id);