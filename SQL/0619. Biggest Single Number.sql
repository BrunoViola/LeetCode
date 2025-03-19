-- Link do enunciado: https://leetcode.com/problems/biggest-single-number/description/
SELECT COALESCE(MAX(sub.num), null) AS num
FROM (SELECT num
	FROM mynumbers
	GROUP BY num
	HAVING COUNT(num)=1) AS sub;