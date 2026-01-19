/* 17. Write a MySQL query to create a table employees including columns employee_id, first_name, last_name, job_id, salary 
and make sure that, the employee_id column does not contain any duplicate value at the time of insertion,
 and the foreign key column job_id, referenced by the column job_id of jobs table, can contain only those values which are 
 exists in the jobs table. The InnoDB Engine have been used to create the tables. The specialty of the statement is that, 
 The ON UPDATE CASCADE action allows you to perform cross-table update and ON DELETE RESTRICT action reject the deletion. 
 The default action is ON DELETE RESTRICT.
*/
DROP TABLE IF EXISTS 9to5;
CREATE TABLE IF NOT EXISTS 9to5 ( 
JOB_ID integer NOT NULL, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL,
CONSTRAINT JOB_ID_FK FOREIGN KEY (JOB_ID) REFERENCES jobs(job_id)
	ON UPDATE CASCADE
	ON DELETE RESTRICT 
)ENGINE=InnoDB;
INSERT INTO 9to5(job_id, job_title, min_salary, max_salary) VALUES
-- (4, 'Data Scientist', 8000, 20000),
  (2, 'Data Engineer', 16000, 22000)


