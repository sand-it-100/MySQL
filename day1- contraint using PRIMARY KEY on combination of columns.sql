-- 13. Write a MySQL query to create a table countries including columns country_id, country_name and region_id 
-- and make sure that the combination of columns country_id and region_id will be unique.
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
	country_id INT ,
    country_name VARCHAR(233),
    region_id INT,
    PRIMARY KEY (country_id,region_id)
    );
INSERT INTO countries (country_id, country_name ,region_id)
VALUES 
	(1, 'India', 101),
    (2,'Brazil',233),
	(2,'UK', 2),
	(2,'UK', 2) -- error code: 1062
    
