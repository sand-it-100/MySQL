-- 3. Write a query to display the name (first_name, last_name) and salary for all employees whose salary is not in the 
-- range $10,000 through $15,000 and are in department 30 or 100.
SELECT FIRST_NAME, LAST_NAME, SALARY FROM employees
WHERE SALARY NOT BETWEEN 16000 AND 23000 AND DEPARTMENT_ID IN (60,90)