-- 6. Write a MySQL query to find the name (first_name, last_name), and salary of the employees whose salary is
--  equal to the minimum salary for their job grade.
SELECT first_name, last_name, salary FROM employees 
WHERE employees.salary = (SELECT min_salary FROM jobs WHERE employees.job_id = jobs.job_id)