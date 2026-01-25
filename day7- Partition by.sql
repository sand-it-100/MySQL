-- Write a MySQL query to partition employees by department and rank them by salary within each department
USE resources;
SELECT first_name, salary ,department_id ,RANK() OVER(PARTITION BY department_id ORDER BY salary DESC) FROM employees
;