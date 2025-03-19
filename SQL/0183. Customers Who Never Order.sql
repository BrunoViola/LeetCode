-- Link do enunciado: https://leetcode.com/problems/customers-who-never-order/description/
SELECT c.name AS Customers
FROM Customers c
LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.customerId IS NULL;