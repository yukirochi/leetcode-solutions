-- Write your PostgreSQL query statement below
WITH salary_ranked AS (
    SELECT b.name as Department, a.name as Employee, a.salary as Salary, RANK() 
    OVER (PARTITION BY departmentId ORDER BY salary desc) as ranking
    FROM Employee as a
    JOIN Department as b 
    ON  a.departmentId = b.id
)

SELECT Department, Employee, Salary
FROM salary_ranked
WHERE ranking = 1
;