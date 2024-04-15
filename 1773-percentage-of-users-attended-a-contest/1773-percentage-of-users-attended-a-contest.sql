SELECT r.contest_id, ROUND(r.registered / u.users * 100, 2) AS percentage
FROM(
    SELECT contest_id, COUNT(*) AS registered
    FROM register
    GROUP BY contest_id
    ) AS r
JOIN(
    SELECT COUNT(*) AS users
    FROM users
    ) AS u
ORDER BY percentage DESC, contest_id