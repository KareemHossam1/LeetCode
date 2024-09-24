SELECT id,
CASE
	WHEN ID % 2 = 0 AND ID != (SELECT MAX(id) FROM seat) THEN LAG(student) OVER(ORDER BY id)
	WHEN ID % 2 != 0 AND ID != (SELECT MAX(id) FROM seat) THEN LEAD(student) OVER(ORDER BY id)
    WHEN ID = (SELECT MAX(id) FROM seat) AND id % 2 != 0 THEN student
    ELSE LAG(student) OVER(ORDER BY id)
END
AS student
FROM seat