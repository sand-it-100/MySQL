-- 4. Write a SQL statement to change the email column of employees table with 'not available' for those employees whose department_id is 80 
-- and gets a commission_pct is less than .20
UPDATE employees
SET EMAIL='available'
WHERE DEPARTMENT_ID=90 AND COMMISSION_PCT < 2.10;