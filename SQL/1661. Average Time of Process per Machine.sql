WITH CTE_process AS (
	SELECT machine_id, MAX(CASE WHEN activity_type = 'end' THEN timestamp END) AS end_time, - MIN(CASE WHEN activity_type = 'start' THEN timestamp END) AS start_time
    FROM Activity
    GROUP BY machine_id, process_id
)
SELECT machine_id, ROUND(AVG(end_time+start_time),3) as processing_time
FROM CTE_process
GROUP BY machine_id;