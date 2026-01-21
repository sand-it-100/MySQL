-- 6. Write a query to display the last name, job, and salary for all employees whose job is that of a Programmer or a Shipping Clerk, 
-- and whose salary is not equal to $4,500, $10,000, or $15,000.
SELECT LAST_NAME ,JOB_ID, SALARY FROM employees
WHERE JOB_ID IN('AD_VP','IT_PROG') AND
SALARY NOT IN (17000 ,6000)
