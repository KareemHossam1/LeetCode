SELECT ROUND(AVG(st.status) * 100, 2) AS immediate_percentage
FROM(
    SELECT IF(MIN(order_date) = MIN(customer_pref_delivery_date), 1, 0) AS status
    FROM delivery
    GROUP BY customer_id
    ) AS st