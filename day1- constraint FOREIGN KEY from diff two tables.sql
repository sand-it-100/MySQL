-- 16. Write a MySQL query to create a table employees including columns employee_id, first_name, last_name, email, phone_number hire_date, job_id, salary, commission, manager_id and department_id and make sure that, the employee_id column does not contain any duplicate value at the time of insertion, and the foreign key column department_id, reference by the column department_id of departments table, can contain only those values which are exists in the departments table and another foreign key column job_id, referenced by the column job_id of jobs table,
--  can contain only those values which are exists in the jobs table. The InnoDB Engine have been used to create the tables.
-- "A foreign key constraint is not required merely to join two tables. For storage engines other than InnoDB, it is possible when defining a column to use a REFERENCES tbl_name(col_name) clause, which has no actual effect, and serves only as a memo or comment to you that the column which you are currently defining is intended to refer to a column in another table." - Reference dev.mysql.com
DROP TABLE IF EXISTS employees;
CREATE TABLE employees (
    employee_id INT NOT NULL UNIQUE,
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
	CONSTRAINT fk_department FOREIGN KEY (department_id) REFERENCES department(department_id),
    CONSTRAINT fk_job_id FOREIGN KEY (job_id) REFERENCES jobs(job_id)
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
