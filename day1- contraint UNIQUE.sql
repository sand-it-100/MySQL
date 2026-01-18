-- 9. Write a MySQL query to create a table named countries including columns country_id,country_name and region_id and make sure that
-- no duplicate data against column country_id will be allowed at the time of insertion

DROP TABLE IF EXISTS countries
;CREATE TABLE countries (
country_id  INT PRIMARY KEY, 
country_name VARCHAR(255) NOT NULL,
region_id DECIMAL(4,1) NOT NULL,
UNIQUE(country_id)
);
INSERT INTO countries(country_id, country_name ,region_id)
VALUES
	(1, 'India', 101),
	(1, 'United States', 102), -- error code: 1062
    (3, 'Brazil', 103),
    (4, 'Japan', 104)
    