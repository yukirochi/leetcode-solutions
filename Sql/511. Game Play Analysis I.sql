SELECT MIN(player_id) AS player_id, MIN(event_date) AS first_login
FROM Activity
GROUP BY player_id
ORDER BY first_login ASC
;