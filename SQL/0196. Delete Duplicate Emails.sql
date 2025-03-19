-- Link do enunciado: https://leetcode.com/problems/delete-duplicate-emails/description/
DELETE 
FROM Person AS p1
WHERE p1.id <> (SELECT MIN(id) FROM Person WHERE p1.email = email);