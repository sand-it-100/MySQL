-- 9. Write a SQL statement to add a primary key for a combination of columns location_id and country_id
ALTER TABLE country_new
ADD PRIMARY KEY(region_id,country_id)