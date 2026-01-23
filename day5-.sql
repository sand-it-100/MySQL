-- 8. Write a MySQL query to find the name (first_name, last_name), and salary of the employees who earns more than the earning of Mr. Bell.
SELECT first_name, last_name ,salary FROM employees 
WHERE salary > (SELECT salary FROM employees WHERE last_name ='Bell')
ORDER BY first_name;