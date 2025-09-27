SELECT product_name, SUM(unit) AS unit
FROM products
INNER JOIN orders USING(product_id)
WHERE order_date >= '2020-02-01' AND order_date <= '2020-02-29'
GROUP BY product_name
HAVING unit >= 100;
