-- Link do enunciado: https://leetcode.com/problems/replace-employee-id-with-the-unique-identifier/description/
SELECT u.unique_id, e.name
FROM employeeuni AS u
RIGHT JOIN employees AS e
USING (id);