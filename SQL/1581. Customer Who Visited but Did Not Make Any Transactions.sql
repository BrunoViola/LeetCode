-- Link do enunciado: https://leetcode.com/problems/customer-who-visited-but-did-not-make-any-transactions/description/
SELECT v.customer_id, COUNT(v.customer_id) AS count_no_trans
FROM Visits AS v
LEFT JOIN Transactions AS t
USING(visit_id)
WHERE t.visit_id IS NULL
GROUP BY v.customer_id;