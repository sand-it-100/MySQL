-- 6. Write a MySQL query to create a table named jobs including columns job_id, job_title, min_salary, max_salary 
-- and check whether the max_salary amount exceeding the upper limit 25000.
DROP TABLE IF EXISTS jobs;
CREATE TABLE IF NOT EXISTS jobs(
	job_id INT ,
    job_title varchar(233),
    min_salary INT,
    max_salary int,
    CHECK (max_salary < 25000)
    );
INSERT INTO jobs  (job_id, job_title, min_salary, max_salary)
VALUES 
	(1 , 'data scientist', 56000, 55000), -- Error Code: 4025
    (2 , 'data analysist', 44000, 35000),   -- Error Code: 4025
    (3, 'data engineer', 32000, 25000),
    (4 , 'Software engineer', 29000, 15000);

