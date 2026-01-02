-- Write your PostgreSQL query statement below
SELECT *
FROM Cinema
WHERE NOT Cinema.id % 2 = 0
AND  Cinema.Description NOT LIKE 'boring'
ORDER BY Cinema.Rating DESC
; 