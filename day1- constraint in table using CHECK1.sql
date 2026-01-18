-- 7. Write a MySQL query to create a table named countries including columns country_id, country_name and region_id 
-- and make sure that no countries except Italy, India and China will be entered in the table
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
	country_id INT PRIMARY KEY,
    country_name VARCHAR(233),
    CHECK (country_name IN ( 'Italy', 'India', 'China')),
    region_id INT
    );

INSERT INTO countries (country_id, country_name ,region_id)
VALUES 
	(1, 'India', 101),
    (2, 'United States', 102),
    (3, 'Brazil', 103),
    (4, 'Japan', 104)
	