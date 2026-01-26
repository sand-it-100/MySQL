-- pie chart (copy the output ,paste the data on spreadsheet in order to pie chart or use python code)
 SELECT company ,COUNT(Company) FROM laptops
GROUP BY Company
 