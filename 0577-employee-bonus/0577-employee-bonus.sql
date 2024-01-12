# Write your MySQL query statement below
SELECT
	name,
    bonus
FROM employee
LEFT JOIN bonus
USING(empId)
WHERE bonus < 1000 OR BONUS IS NULL