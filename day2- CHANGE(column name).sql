-- 7. Write a SQL statement to change the name of the column state_province to state, keeping the data type and size same.
ALTER TABLE country_new
CHANGE state_province state VARCHAR(255)