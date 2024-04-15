SELECT project_id, ROUND(AVG(experience_years),2) AS average_years
FROM project
LEFT JOIN employee
USING(employee_id)
GROUP By project_id