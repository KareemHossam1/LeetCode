# Write your MySQL query statement below
SELECT
	machine_id,
	ROUND(AVG(timestamp_diff), 3) AS processing_time
FROM(
	SELECT
	a1.machine_id,
    ABS(a1.timestamp - a2.timestamp) AS timestamp_diff
	FROM activity a1
	JOIN activity a2
	WHERE a1.machine_id = a2.machine_id
	AND a1.process_id = a2.process_id
	AND a1.activity_type != a2.activity_type
	GROUP BY a1.machine_id, a1.process_id
) AS result
GROUP BY machine_id