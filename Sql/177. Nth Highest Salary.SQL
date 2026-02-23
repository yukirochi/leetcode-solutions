CREATE FUNCTION getNthHighestSalary(N INT) RETURNS INT
BEGIN
  RETURN (
       SELECT DISTINCT salary
       FROM (
        SELECT salary, DENSE_RANK() OVER(ORDER BY salary desc) as ranking
        FROM Employee
       ) salaries_ranking
       WHERE ranking = N
  );
END