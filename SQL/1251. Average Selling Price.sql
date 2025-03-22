-- Link do enunciado: https://leetcode.com/problems/average-selling-price/description/
SELECT p.product_id, ROUND(SUM(p.price*us.units)/SUM(us.units)*1.0, 2) AS average_price
    FROM Prices AS p
    LEFT JOIN UnitsSold AS us
    USING (product_id)
    WHERE us.purchase_date BETWEEN p.start_date AND p.end_date
    GROUP BY p.product_id
UNION
SELECT p.product_id, 0 AS average_price
    FROM Prices AS p
    WHERE p.product_id NOT IN (SELECT DISTINCT product_id FROM UnitsSold);