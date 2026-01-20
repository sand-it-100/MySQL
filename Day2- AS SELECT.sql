-- 3. Write a MySQL query to create duplicate of countries table named country_new with all structure and data.

CREATE TABLE countries
AS SELECT * FROM country_new

/*   ⚡ Conclusion:
LIKE → structure + constraints copy karta hai, data nahi.

AS SELECT → structure + data copy karta hai, constraints nahi.

*/