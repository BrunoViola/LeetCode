-- Link do enunciado: https://leetcode.com/problems/duplicate-emails/description/
SELECT p.email AS Email
FROM person p
GROUP BY p.email
HAVING COUNT(*)>1;