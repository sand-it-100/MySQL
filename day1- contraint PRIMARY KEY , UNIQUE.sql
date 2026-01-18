-- 11. Write a MySQL query to create a table named countries including columns country_id, country_name and region_id and make sure that 
-- the country_id column will be a key field which will not contain any duplicate data at the time of insertion.
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
	country_id INT UNIQUE PRIMARY KEY,  -- not necessary to put UNIQUE, PRIMARY KEY can handle unique entries.
    coutry_name VARCHAR(233),
    region_id int
    );
INSERT INTO countries (country_id, coutry_name ,region_id)
VALUES 
	(1, 'India', 101),
	(2, 'United States', 102),  -- Error Code: 1062
    (2, 'Brazil', 103),
    (4, 'Japan', 104)