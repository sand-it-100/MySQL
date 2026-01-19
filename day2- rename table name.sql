-- 1. Write a SQL statement to rename the table countries to country_new.
DROP TABLE IF EXISTS countries;
USE resources;
CREATE TABLE countries(
    country_id INT PRIMARY KEY,
    country_name VARCHAR(100) NOT NULL,
    population BIGINT
);

INSERT INTO countries (country_id, country_name,population) VALUES
(1, 'India',  1420000000),
(2, 'United States',  331000000),
(3, 'Brazil',  213000000),
(4, 'Germany', 83000000),
(5, 'Australia',  26000000);

DROP TABLE IF EXISTS country_new;
ALTER TABLE countries
RENAME country_new
    