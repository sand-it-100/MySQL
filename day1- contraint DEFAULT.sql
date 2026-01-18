-- 10. Write a MySQL query to create a table named jobs including columns job_id, job_title, min_salary and max_salary, 
-- and make sure that, the default value for job_title is blank and min_salary is 8000 and
--  max_salary is NULL will be entered automatically at the time of insertion if no value assigned for the specified columns
DROP TABLE IF EXISTS jobs;
CREATE TABLE IF NOT EXISTS jobs(
	job_id INT PRIMARY KEY, 
    job_title VARCHAR(244) DEFAULT ' ',
    min_salary INT DEFAULT 8000, 
    max_salary  INT DEFAULT NULL
    );
INSERT INTO jobs (job_id, min_salary ,max_salary)
VALUES 
	(2,2300,8100);
INSERT INTO jobs (job_id, min_salary)
VALUES 
    (3, 2300);
INSERT INTO jobs (job_id, job_title ,max_salary)
VALUES 
    (4,'engineer',8100)