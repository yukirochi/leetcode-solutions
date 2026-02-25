SELECT name
FROM SalesPerson
WHERE sales_id NOT IN (
    SELECT sales_id
    FROM Orders as a
    JOIN Company as b 
    ON a.com_id = b.com_id
    WHERE name = 'RED'
)


