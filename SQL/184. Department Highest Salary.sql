-- Link do enunciado: https://leetcode.com/problems/department-highest-salary/description/
SELECT d.name AS 'Department', e.name AS 'Employee', e.salary AS 'Salary'
FROM employee AS e
JOIN department AS d
ON e.departmentId = d.id
WHERE e.salary = (SELECT MAX(salary) FROM employee WHERE departmentId = e.departmentId);