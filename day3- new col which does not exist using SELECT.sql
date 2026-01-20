-- 4. Write a query to get the names (first_name, last_name), salary, PF of all the employees (PF is calculated as 15% of salary).

SELECT FIRST_NAME,LAST_NAME, SALARY,(SALARY*.15) AS PF FROM employees