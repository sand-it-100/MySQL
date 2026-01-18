-- 2. Write a MySQL query to create a simple table countries including columns country_id, country_name and region_id which is already exists.
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
	country_id INT PRIMARY KEY,
    coutry_name VARCHAR(233),
    region_id int
    );
INSERT INTO countries (country_id, coutry_name ,region_id)
VALUES 
	(1, 'India', 101),
	(2, 'United States', 102),
    (3, 'Brazil', 103),
    (4, 'Japan', 104)
    

