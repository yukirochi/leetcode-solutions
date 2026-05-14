-- Write your PostgreSQL query statement below
SELECT 
    request_at as Day,
    ROUND( (SUM(CASE WHEN lower(status) LIKE 'cancelled_by%' THEN 1 ELSE 0 END) * 1.0 /
    NULLIF(COUNT(*),0)
    ),2) as "Cancellation Rate"
FROM Trips
WHERE driver_id IN (
            SELECT users_id
            FROM Users
            WHERE lower(banned) = 'no'
            ) AND
            client_id IN (
            SELECT users_id
            FROM Users
            WHERE lower(banned) = 'no'
            ) AND request_at BETWEEN '2013-10-01' AND  '2013-10-03'
GROUP BY request_at 
;