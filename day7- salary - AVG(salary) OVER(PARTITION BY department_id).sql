-- Write a MySQL query to calculate the difference between each employee's salary 
-- and the average salary of their department using a window function.
SELECT employee_id, first_name, department_id , salary - AVG(salary) OVER(PARTITION BY department_id) FROM employees