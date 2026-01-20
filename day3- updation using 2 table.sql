-- 5. Write a SQL statement to change the email column of employees table with 'not available' 
-- for those employees who belongs to the 'Marketing' department
CREATE TABLE departments (
    DEPARTMENT_ID   INT PRIMARY KEY,
    DEPARTMENT_NAME VARCHAR(50) NOT NULL,
    MANAGER_ID      INT,
    LOCATION_ID     INT
);
INSERT INTO departments 
(DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
VALUES
(10, 'Administration', 200, 1700),
(20, 'Marketing', 201, 1800),
(30, 'Purchasing', 114, 1700),
(40, 'Human Resources', 203, 2400),
(50, 'Shipping', NULL, NULL);
INSERT INTO departments 
(DEPARTMENT_ID, DEPARTMENT_NAME, MANAGER_ID, LOCATION_ID)
VALUES
(60, 'Marketing', 290, 2700);

UPDATE employees SET EMAIL='not provided' WHERE (SELECT DEPARTMENT_ID FROM departments WHERE DEPARTMENT_NAME = 'Administration'  )

