-- Write your PostgreSQL query statement below
SELECT DISTINCT a.num AS ConsecutiveNums
FROM Logs as a
JOIN Logs as b 
ON a.id = b.id - 1
JOIN Logs as c 
ON b.id = c.id - 1
WHERE a.num = b.num and b.num = c.num
;