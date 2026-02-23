
-- Write your PostgreSQL query statement below

--extract the length of the product
WITH length_of_product as (
    SELECT COUNt(*) as p_length
    FROM product
)

SELECT customer_id
FROM Customer
GROUP BY customer_id
-- check if the number of distinct product key in customer id group is equal to the lenth of list of product
HAVING  COUNT(DISTINCT product_key) = (SELECT p_length FROM length_of_product)
;