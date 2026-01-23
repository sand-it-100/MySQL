-- 11. Write a MySQL query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.

SELECT job_title, first_name, last_name ,salary - min_salary  FROM employees 
JOIN jobs 
