-- Link do enunciado: https://leetcode.com/problems/customer-placing-the-largest-number-of-orders/
SELECT customer_number
FROM orders
GROUP BY customer_number
ORDER BY COUNT(order_number) DESC
LIMIT 1;