SELECT ROUND(good_players.good / allplayer.ap, 2) AS fraction
FROM(
    SELECT COUNT(*) AS good
    FROM(
        SELECT player_id, MIN(event_date) AS first_login_date
        FROM activity
        GROUP BY player_id
        ) AS first_login
    JOIN activity a
    ON first_login.player_id = a.player_id
    AND DATEDIFF(first_login.first_login_date, a.event_date) = -1
    ) AS good_players
JOIN(
    SELECT COUNT(DISTINCT player_id) AS ap FROM activity
) AS allplayer