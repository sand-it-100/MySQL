-- 1. Write a MySQL query to create a simple table countries including columns country_id, country_name and region_id.
CREATE TABLE countries (
country_id  INT, 
country_name VARCHAR(255),
region_id VARCHAR(233)
);

INSERT INTO countries(country_id, country_name ,region_id)
VALUES
	(1, 'India', 101),
	(2, 'United States', 102),
    (3, 'Brazil', 103),
    (4, 'Japan', 104)
    