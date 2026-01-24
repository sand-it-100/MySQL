-- 1. Rank Employees by Salary
-- Write a MySQL query to rank employees based on their salary in descending order using a window function.
SELECT salary,RANK() OVER(ORDER BY salary DESC) FROM employees