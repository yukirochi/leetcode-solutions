SELECT today.id AS Id -- for return
FROM  Weather AS today -- today table
JOIN Weather AS yesterday -- yesterday table
ON today.recordDate - yesterday.recordDate  = 1 -- verify the yesterday date
WHERE yesterday.temperature < today.temperature -- check if today had higher temp
;