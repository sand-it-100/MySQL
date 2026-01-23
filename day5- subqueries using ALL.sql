-- 10. Write a MySQL query to find the name (first_name, last_name), and salary of the employees whose salary is greater than
--  the average salary of each department.
SELECT first_name, last_name, salary FROM employees
WHERE salary > ALL(SELECT AVG(salary) FROM employees GROUP BY department_id)