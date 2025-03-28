-- Link do enunciado: https://leetcode.com/problems/fix-names-in-a-table/description/
SELECT user_id, concat(UPPER(SUBSTRING(name, 1, 1)), LOWER(SUBSTRING(name, 2, LENGTH(name)))) AS name
FROM Users
ORDER BY user_id ASC;