-- Write your PostgreSQL query statement below
WITH ranked AS (
    SELECT *,
        ROW_NUMBER() OVER(
            PARTITION BY customer_id ORDER BY order_date
        ) as rn
    FROM Delivery
),

total_em AS(
SELECT 
COUNT(*)
FROM ranked 
WHERE rn = 1 AND order_date = customer_pref_delivery_date
) 

SELECT 
    ROUND((SELECT * FROM total_em)* 1.00 / (SELECT COUNT(DISTINCT customer_id) FROM Delivery LIMIT 1) * 100,2)  as immediate_percentage
    FROM Delivery LIMIT 1;
