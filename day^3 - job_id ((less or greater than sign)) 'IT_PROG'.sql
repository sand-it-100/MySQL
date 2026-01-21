-- 11. Write a query to get the average salary for each job ID excluding programmer.
SELECT AVG(SALARY), JOB_ID FROM employees
WHERE JOB_ID <> 'IT_PROG'
GROUP BY JOB_ID
