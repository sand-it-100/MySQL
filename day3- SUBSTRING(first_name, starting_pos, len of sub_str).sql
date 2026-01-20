-- 12. Write a query to get the first 3 characters of first name from employees table.

/*  Explanation:
This SQL query extracts a substring of the first three characters from the first_name column for each row in the employees table.
The SUBSTRING() function is used to perform this operation. It takes three arguments: the column or string, the starting position 
--(1 in this case), and the length of the substring to extract (3 in this case).
     */
	
SELECT SUBSTRING(FIRST_NAME,1,3) FROM employees