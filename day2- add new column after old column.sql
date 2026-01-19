-- 4. Write a SQL statement to add a column region_id after state_province to the table locations.

ALTER TABLE country_new
ADD COLUMN region_id INT
AFTER state_province
