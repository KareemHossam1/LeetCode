SELECT student_id,
	   student_name,
       subject_name,
       COALESCE(attended_exams, 0) attended_exams
FROM students
JOIN subjects
LEFT JOIN (
	SELECT student_id,
    subject_name,
    COUNT(*) attended_exams
    FROM examinations
    GROUP BY student_id, subject_name
) lj
USING (student_id, subject_name)
ORDER BY student_id, subject_name