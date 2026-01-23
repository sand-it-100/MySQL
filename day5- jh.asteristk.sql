-- 12. Write a MySQL query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.
SELECT jh.* FROM job_history jh
JOIN employees e
ON e.employee_id = j.employee_id
WHERE job_id <104
