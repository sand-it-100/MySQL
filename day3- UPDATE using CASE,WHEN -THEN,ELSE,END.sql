-- 8. Write a SQL statement to increase the salary of employees under the department 40, 90 and 
-- 110 according to the company rules that, salary will be increased by 25% for the department 40, 15% for department 90 
-- and 10% for the department 110 
-- and the rest of the departments will remain same.
UPDATE employees
SET salary= CASE DEPARTMENT_ID
	WHEN 90 THEN (salary + (salary * 0.25))
    WHEN 100 THEN (salary + (salary * 0.15))
    ELSE salary
END
WHERE
DEPARTMENT_ID in (60,90,200,100)
