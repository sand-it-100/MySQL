-- 13. Write a MySQL query to display department name, name (first_name, last_name), hire date, salary of the manager for all
--  managers whose experience is more than 15 years.
SELECT d.department_name, e.first_name, e.last_name, e.hire_date, e.salary, (DATEDIFF(NOW(), hire_date))/365 experience FROM employees e
JOIN departments d
ON e.employee_id = d.department_id
WHERE  (DATEDIFF(NOW(), hire_date))/365 > 15; 