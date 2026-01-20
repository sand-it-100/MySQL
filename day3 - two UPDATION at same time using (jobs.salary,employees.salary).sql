-- 9. Write a SQL statement to increase the minimum and maximum salary of PU_CLERK by 2000 as well as the salary for those employees by 
-- 20% and commission percent by .10.
UPDATE employees , jobs
SET 
jobs.max_salary = jobs.max_salary + 2000 ,
jobs.min_salary = jobs.min_salary + 2000 ,
employees.salary = (employees.salary + (employees.salary *0.25)),
employees.commission = (employees.commission + (employees.commission *.10))

WHERE employees.job_id = 'PL_CLERK'
AND jobs.job_id = 'PL_CLERK'