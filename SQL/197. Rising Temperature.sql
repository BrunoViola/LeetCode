-- Link do enunciado: https://leetcode.com/problems/rising-temperature/description/
SELECT w.id
FROM weather AS w
WHERE w.temperature > (SELECT temperature FROM weather WHERE DATEDIFF(w.recordDate, recordDate)=1);