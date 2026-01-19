-- 14. Write a SQL statement to add an index named indx_job_id on job_id column in the table job_history.
ALTER TABLE job_history
ADD INDEX indx_job_id(job_id)