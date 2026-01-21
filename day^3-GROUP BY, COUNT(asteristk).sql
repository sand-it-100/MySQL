-- 7. Write a query to get the number of employees with the same job.
SELECT JOB_ID , COUNT(*) FROM employees
GROUP BY JOB_ID