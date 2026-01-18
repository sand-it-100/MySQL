-- 12. Write a MySQL query to create a table countries including columns country_id, country_name and region_id and
--  make sure that the column country_id will be unique and store an auto incremented value.
DROP TABLE IF EXISTS countries;
CREATE TABLE countries (
	country_id INT UNIQUE AUTO_INCREMENT PRIMARY KEY,
    coutry_name VARCHAR(233),
    region_id int
    );
INSERT INTO countries (country_id, coutry_name ,region_id)
VALUES 
	(1, 'India', 101);
INSERT INTO countries ( coutry_name ,region_id)
VALUES
	('United States', 102);
INSERT INTO countries (country_id, coutry_name ,region_id)
VALUES
    (2, 'Brazil', 103);
INSERT INTO countries ( region_id)
VALUES
	( 102);
   