-- Link do enunciado: https://leetcode.com/problems/employees-earning-more-than-their-managers/description/
SELECT e.name AS Employee
FROM employee e
JOIN employee m ON m.id = e.managerId
WHERE (e.managerId IS NOT NULL) AND e.salary > m.salary;