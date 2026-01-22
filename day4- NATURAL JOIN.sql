--  1. Write a MySQL query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.


SELECT location_id, street_address, city, state_province, country_name FROM locations
NATURAL JOIN countries

