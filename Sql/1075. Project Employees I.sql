# Write your MySQL query statement below
SELECT DISTINCT a.project_id, ROUND(AVG(experience_years) OVER(PARTITION BY a.project_id),2) as average_years
FROM Project as a
JOIN Employee as b
ON a.employee_id = b.employee_id