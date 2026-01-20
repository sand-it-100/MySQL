-- 7. Write a SQL statement to change job ID of employee which ID is 108, to SH_CLERK if the employee belongs to department, which ID is 100 
-- and the existing job ID does not start with SH.
UPDATE employees SET JOB_ID = 'SH_CLERK' 
WHERE (
	DEPARTMENT_ID =100 AND
    NOT JOB_ID  LIKE 'SH%'
    AND EMPLOYEE_ID =108)
    
