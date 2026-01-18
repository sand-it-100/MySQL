-- 5. Write a MySQL query to create a table countries set a constraint NOT NULL
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
country_id  INT PRIMARY KEY, 
country_name VARCHAR(255) NOT NULL,
region_id DECIMAL(4,1) NOT NULL
);
INSERT INTO countries(country_id, country_name ,region_id)
VALUES
	(1, 'India', 101),
	(2, 'United States', 102),
    (3, 'Brazil', 103),
    (4, 'Japan', 104)
    