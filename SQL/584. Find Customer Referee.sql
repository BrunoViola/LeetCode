-- Link do enunciado: https://leetcode.com/problems/find-customer-referee/description/
SELECT c.name
FROM Customer c
WHERE c.referee_id IS NULL OR c.referee_id!=2;