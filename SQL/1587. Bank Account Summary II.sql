-- Link do enunciado: https://leetcode.com/problems/bank-account-summary-ii/description/
SELECT name, SUM(amount) AS balance
FROM Users
JOIN Transactions
USING (account)
GROUP BY name
HAVING SUM(amount) > 10000;