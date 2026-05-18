-- Write your PostgreSQL query statement below
SELECT
    TO_CHAR(trans_date, 'YYYY-MM') as month,
    country,
    COUNT(*) as trans_count,
    COUNT(*) FILTER (WHERE LOWER(state) = 'approved') as approved_count,
    COALESCE(SUM(amount),0) as trans_total_amount,
    COALESCE(SUM(amount) FILTER (WHERE LOWER(state) = 'approved'), 0) as approved_total_amount
FROM Transactions
GROUP BY country, TO_CHAR(trans_date, 'YYYY-MM')
ORDER BY TO_CHAR(trans_date, 'YYYY-MM')