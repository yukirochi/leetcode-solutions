-- Write your PostgreSQL query statement below
WITH grouped AS (
    SELECT COUNT(DISTINCT a.player_id) as valid_player
    FROM Activity AS a
    JOIN Activity AS b
    ON a.player_id = b.player_id AND a.event_date = b.event_date - 1
    WHERE (a.player_id, a.event_date) IN (
        SELECT a.player_id, MIN(event_date) as event_date
        FROM Activity as a
        GROUP BY player_id
        ORDER BY event_date
    )
)

SELECT (ROUND((valid_player + 0.0) / (SELECT COUNT(DISTINCT player_id) FROM Activity), 2)) as fraction
FROM grouped
