-- Finding outliers
SELECT Price, t.Q1, t.Q3 FROM (SELECT Price , 
PERCENTILE_CONT(0.25) WITHIN GROUP(ORDER BY Price) OVER() AS 'Q1',
PERCENTILE_CONT(0.75) WITHIN GROUP(ORDER BY Price) OVER() AS 'Q3'
FROM laptops) t
WHERE 
t.Price < t.Q1 - (1.5 * (t.Q3 - t.Q1)) OR 
t.Price > t.Q3 + (1.5 * (t.Q3 - t.Q1))
