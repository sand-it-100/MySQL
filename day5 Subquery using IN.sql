-- 2. Write a MySQL query to find the name (first_name, last_name) of all employees who works in the IT department.
SELECT first_name, last_name ,job_id FROM employees
WHERE department_id IN (SELECT department_id FROM departments WHERE department_name = 'IT')