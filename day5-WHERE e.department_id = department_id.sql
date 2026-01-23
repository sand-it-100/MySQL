-- 14. Write a MySQL query to display the employee ID, first name, last name, salary of all employees 
-- whose salary is above average for their departments.
SELECT employee_id, first_name, last_name,salary FROM employees e
WHERE salary > (SELECT AVG(salary) FROM employees   WHERE e.department_id = department_id )