SELECT p.product_id, COALESCE(ROUND(SUM(u.units * p.price) / SUM(units),2),0) AS average_price
FROM prices p
LEFT JOIN unitssold u
ON u.purchase_date BETWEEN p.start_date AND p.end_date
AND u.product_id = p.product_id
GROUP BY p.product_id