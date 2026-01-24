WITH ranked as (
    SELECT b.name as Department, a.name as Employee, a.salary as Salary, DENSE_RANK() 
    OVER (PARTITION BY departmentId ORDER BY SALARY DESC) as ranking
    FROM Employee as a
    JOIN Department as b
    ON a.departmentId = b.id
)

SELECT Department, Employee, Salary
FROM ranked
WHERE ranking <= 3
;