-- Write your PostgreSQL query statement below

WITH ranked AS (
    SELECT 
    product_id,
    new_price,
    change_date,
    ROW_NUMBER() OVER(
        PARTITION BY product_id ORDER BY change_date DESC
    ) AS rn
    FROM Products
    WHERE change_date <= '2019-08-16'
),

filtered as (
    SELECT product_id,
            new_price as price
    FROM ranked
    WHERE rn = 1 
)

SELECT 
    b.product_id,
    COALESCE(a.price,10) as price
FROM 
    filtered a
RIGHT JOIN 
    (
        SELECT DISTINCT product_id
        FROM Products
    ) b

ON a.product_id = b.product_id;

