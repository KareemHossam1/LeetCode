SELECT conf_table.user_id, COALESCE(ROUND(confirmed_requests/requests,2),0) AS confirmation_rate
FROM (
    SELECT s.user_id, COUNT(action) confirmed_requests
    FROM signups s
    LEFT JOIN confirmations c
        ON s.user_id = c.user_id
        AND action = 'confirmed'
    GROUP BY s.user_id
          ) AS conf_table
JOIN( 
    SELECT s.user_id, COUNT(action) requests
    FROM signups s
    LEFT JOIN confirmations c
        ON s.user_id = c.user_id
    GROUP BY s.user_id
) AS req_table
USING (user_id)