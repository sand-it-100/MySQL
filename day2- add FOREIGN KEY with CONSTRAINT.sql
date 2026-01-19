-- 11. Write a SQL statement to add a foreign key on job_id column of job_history table referencing to the primary key job_id of jobs table.
CREATE TABLE jobs (
    job_id INT PRIMARY KEY,
    job_title VARCHAR(100) NOT NULL,
    min_salary INT,
    max_salary INT
);

-- Insert 6 sample jobs
INSERT INTO jobs (job_id, job_title, min_salary, max_salary) VALUES
(101, 'Data Analyst', 40000, 80000),
(102, 'Software Engineer', 60000, 120000),
(103, 'Database Administrator', 50000, 100000),
(104, 'UI/UX Designer', 45000, 90000),
(105, 'Project Manager', 70000, 150000),
(106, 'QA Tester', 35000, 70000);

CREATE TABLE job_history (
    history_id INT PRIMARY KEY,
    employee_name VARCHAR(100),
    job_id INT,
    start_date DATE,
    end_date DATE,
   CONSTRAINT job_his_fk FOREIGN KEY (job_id) REFERENCES jobs(job_id)
);

-- Insert 6 sample job history records
INSERT INTO job_history (history_id, employee_name, job_id, start_date, end_date) VALUES
(1, 'Amit Sharma', 101, '2021-01-15', '2022-06-30'),
(2, 'Priya Singh', 102, '2020-03-01', '2023-01-15'),
(3, 'Rahul Verma', 103, '2019-07-10', '2021-12-31'),
(4, 'Neha Gupta', 104, '2022-02-20', '2024-01-01'),
(5, 'Ravi Kumar', 105, '2018-05-05', '2020-11-30'),
(6, 'Sneha Patel', 106, '2021-09-01', '2023-08-15');
