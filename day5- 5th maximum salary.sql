-- 16. Write a MySQL query to find the 5th maximum salary in the employees table.
SELECT DISTINCT salary FROM employees e1
WHERE 5= (SELECT COUNT(DISTINCT(salary)) FROM employees e2 WHERE e2.salary >= e1.salary)
