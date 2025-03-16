-- Link do enunciado: https://leetcode.com/problems/game-play-analysis-i/description/
SELECT a.player_id, a.event_date AS first_login
FROM activity AS a
WHERE (a.player_id, datediff(curdate(), a.event_date)) IN (SELECT player_id, MAX(datediff(curdate(), event_date)) FROM activity GROUP BY player_id)
ORDER BY a.player_id;