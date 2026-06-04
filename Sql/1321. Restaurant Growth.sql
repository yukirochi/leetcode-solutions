-- Write your PostgreSQL query statement below
WITH groups AS (
    SELECT 
        visited_on,
        SUM(amount) as amount
    FROM Customer
    GROUP BY visited_on
    ORDER BY visited_on
),
    cal_amount AS (
        SELECT 
            visited_on,
            SUM(amount) OVER(
                ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
            ) AS amount,
            ROUND( 
                SUM(amount) OVER(
                ROWS BETWEEN 6 PRECEDING AND CURRENT ROW
            ) / 7
                ,2) AS average_amount
        FROM groups
    )

SELECT * FROM cal_amount OFFSET 6 ROWS