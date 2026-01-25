-- Write a MySQL query to find the top 3 highest paid employees in each department using a window function.
WITH ranked_employee AS (SELECT department_id, employee_id , salary, RANK() OVER(PARTITION BY department_id ORDER BY salary DESC) AS rank_sal FROM employees)
SELECT department_id,employee_id, salary FROM ranked_employee
WHERE rank_sal <=3
