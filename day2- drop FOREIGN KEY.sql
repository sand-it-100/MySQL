-- 13. Write a SQL statement to drop the existing foreign key fk_job_id from job_history table on job_id column which is 
-- referencing to the job_id of jobs table.
ALTER TABLE job_history
DROP FOREIGN KEY job_his_fk
