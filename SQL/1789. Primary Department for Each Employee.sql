-- Link do enunciado: https://leetcode.com/problems/primary-department-for-each-employee/description/
SELECT employee_id, department_id
FROM Employee
WHERE primary_flag = 'Y'
UNION
SELECT employee_id, department_id
FROM Employee
GROUP BY employee_id
HAVING count(*) = 1;