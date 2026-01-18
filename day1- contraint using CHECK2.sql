-- 8. Write a MySQL query to create a table named job_histry including columns employee_id, start_date,
-- end_date, job_id and department_id and make sure that the value against 
-- column end_date will be entered at the time of insertion to the format like '--/--/----'.
CREATE TABLE IF NOT EXISTS job(
	employee_id INT NOT NULL,
    start_date DATE ,
	end_date DATE,
    CHECK(end_date LIKE '--/--/----'), 
    job_id INT,
    department_id INT PRIMARY KEY
    )
    