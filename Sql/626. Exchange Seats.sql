-- Write your PostgreSQL query statement below
SELECT
    a.id,
    CASE 
        WHEN a.id %  2 != 0 AND a.id < (SELECT COUNT(*) FROM Seat) -- if odd get value in front
        THEN (SELECT b.student FROM Seat b WHERE b.id = a.id + 1 ) 
        WHEN a.id %  2 = 0 
        THEN (SELECT b.student FROM Seat b WHERE  b.id = a.id - 1) -- if EVEN get value in back
        ELSE a.student
    END AS student

FROM Seat a;