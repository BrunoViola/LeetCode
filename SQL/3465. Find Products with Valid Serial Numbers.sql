-- Link do enunciado: https://leetcode.com/problems/find-products-with-valid-serial-numbers/
SELECT *
FROM products
WHERE description REGEXP '\\bSN[0-9]{4}-[0-9]{4}\\b'
ORDER BY product_id ASC;