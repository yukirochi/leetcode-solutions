-- Write your PostgreSQL query statement below
SELECT *,
    COALESCE(
    (
        SELECT 
        COUNT(*)
        FROM Examinations
        WHERE a.student_id = student_id AND b.subject_name = subject_name
        GROUP BY student_id, subject_name
    ),
    0) as attended_exams
FROM Students a
CROSS JOIN Subjects b 
ORDER BY a.student_id, b.subject_name
;
