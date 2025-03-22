-- Link do enunciado: https://leetcode.com/problems/triangle-judgement/description/
SELECT x, y, z, (CASE
                    WHEN x+y>z  AND x+z>y AND y+z>x THEN 'Yes'
                    ELSE 'No'
                END) AS Triangle
    FROM Triangle;