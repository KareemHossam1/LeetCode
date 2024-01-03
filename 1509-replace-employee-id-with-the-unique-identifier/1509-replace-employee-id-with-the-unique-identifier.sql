# Write your MySQL query statement below
SELECT 
    EU.unique_id,
    e.name
FROM employees e
LEFT JOIN EmployeeUNI EU
ON EU.id = e.id