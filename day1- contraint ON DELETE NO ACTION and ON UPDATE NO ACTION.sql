/* 20. Write a MySQL query to create a table employees including columns employee_id, first_name, last_name, job_id, salary 
and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column job_id, 
referenced by the column job_id of jobs table, can contain only those values which are exists in the jobs table. The InnoDB Engine 
have been used to create the tables. The specialty of the statement is that, The ON DELETE NO ACTION and the ON UPDATE NO ACTION 
actions will reject the deletion and any updates.
 */
 
  DROP TABLE IF EXISTS internship;
CREATE TABLE IF NOT EXISTS internship ( 
JOB_ID INT  PRIMARY KEY , 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
) ;

INSERT INTO internship (JOB_ID, JOB_TITLE,MIN_SALARY,MAX_SALARY ) VALUES
(2, 'Data Analyst', 8000, 20000),
(4, 'Software Engineer', 10000, 25000),
(3, 'Project Manager', 12000, 30000);
 
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT ,
    first_name VARCHAR(233),
    last_name VARCHAR(255),
    email VARCHAR(244),
    phone_number VARCHAR(20),
    hire_date DATE,
    job_id INT,
    salary INT,
    commission INT,
    manager_id INT,
    department_id INT,
    CONSTRAINT job_fk FOREIGN KEY (job_id) REFERENCES internship(JOB_ID)
		ON DELETE NO ACTION  ON UPDATE NO ACTION
	);

INSERT INTO employees (
    employee_id, first_name, last_name, email, phone_number,
    hire_date, job_id, salary, commission, manager_id, department_id
) VALUES
(1, 'Amit', 'Sharma', 'amit.sharma@example.com', '9876543210',
 '2026-01-18', 2, 50000, 5000, 201, 10),
 
(2, 'Priya', 'Verma', 'priya.verma@example.com', '9123456780',
 '2026-02-01', 3, 60000, 6000, 202, 20),
 
(3, 'Rahul', 'Singh', 'rahul.singh@example.com', '9988776655',
 '2026-02-15', 4, 55000, 4500, 203, 30);
 


