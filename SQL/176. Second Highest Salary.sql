-- Link do enunciado: https://leetcode.com/problems/second-highest-salary/description/
SELECT (
    SELECT salary
        FROM Employee
        WHERE salary <> (SELECT MAX(salary) FROM Employee)
        ORDER BY salary DESC
        LIMIT 1
)AS SecondHighestSalary;  