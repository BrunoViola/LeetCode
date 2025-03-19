-- Link do enunciado: https://leetcode.com/problems/big-countries/description/
SELECT c.name, c.population, c.area
FROM World c
WHERE c.population >= 25000000 OR c.area >= 3000000;