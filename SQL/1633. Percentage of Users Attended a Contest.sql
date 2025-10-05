SELECT contest_id, ROUND(
							(COUNT(DISTINCT user_id)*100) / (u.total_users), 2
						) AS percentage
FROM Register
CROSS JOIN (SELECT COUNT(user_id) AS total_users FROM Users) AS u
GROUP BY contest_id
ORDER BY percentage DESC, contest_id ASC;