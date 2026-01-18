-- 15. Write a MySQL query to create a table employees including columns employee_id, first_name, last_name, email, 
-- phone_number hire_date, job_id, salary, commission, manager_id and department_id 
-- and make sure that, the employee_id column does not contain any duplicate value at the time of insertion 
-- and the foreign key columns combined by department_id
--  and manager_id columns contain only those unique combination values, which combinations are exists in the departments table.
/* DROP TABLE IF EXISTS department;
CREATE TABLE department (
    department_id INT ,
    manager_id INT ,
    PRIMARY KEY (department_id, manager_id)
);
INSERT INTO department (department_id, manager_id) VALUES
(10, 201),
(20, 202),
(30, 203),
(40, 204),
(50, 205); 
*/

CREATE TABLE employees(
	employee_id INT UNIQUE NOT NULL, 
    first_name VARCHAR(233), 
    last_name VARCHAR(255), 
    email VARCHAR(244), 
	phone_number INT,
	hire_date DATE,
	job_id INT,
	salary INT, 
	commission INT, 
	manager_id INT ,
	department_id INT,
    FOREIGN KEY (department_id,manager_id) REFERENCES department( department_id,manager_id)
    )
