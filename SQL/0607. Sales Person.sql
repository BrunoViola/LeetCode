-- Link do enunciado: https://leetcode.com/problems/sales-person/description/
SELECT name
    FROM SalesPerson 
    WHERE name NOT IN(
        SELECT sp.name
            FROM SalesPerson AS sp
            JOIN Orders AS o
            USING(sales_id)
            JOIN Company AS c
            ON o.com_id = c.com_id AND c.name = 'RED');