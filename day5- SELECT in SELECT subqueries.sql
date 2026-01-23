-- 13. Write a MySQL query to display the employee ID, first name, last name, and department names of all employees.
SELECT employee_id, first_name, last_name, (SELECT department_name FROM departments d WHERE d.department_id = e.department_id)
FROM employees e