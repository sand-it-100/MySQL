-- 1. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the 
-- range $16,000 through $23,000.
SELECT FIRST_NAME ,LAST_NAME ,SALARY FROM employees
WHERE SALARY NOT BETWEEN 16000 AND 23000


