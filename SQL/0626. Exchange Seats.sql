-- Link do enunciado: https://leetcode.com/problems/exchange-seats/description/
-- Primeira versão
SELECT ROW_NUMBER() OVER() AS id, sub.student FROM(
	SELECT s2.id AS id, s2.student, ROW_NUMBER() OVER() AS rn
	FROM seat AS s2
	WHERE s2.id%2=0
	UNION
	SELECT s1.id AS id, s1.student, ROW_NUMBER() OVER() AS rn
	FROM seat AS s1
	WHERE s1.id%2=1) AS sub
   ORDER BY rn ASC, sub.id DESC;

-- Segunda versão
SELECT ROW_NUMBER() OVER() AS id, student
FROM seat
ORDER BY(CASE
		WHEN id % 2 = 0 THEN id-1
      ELSE id + 1
   END);