/*
For each student return student_id and a column status equal to:

-> 'unknown' if total_days is 0
-> 'good' if attendance ratio is at least 0.9
-> 'okay' if it's at least 0.7
-> 'poor' otherwise

Use NULLIF to avoid dividing by zero. Order by student_id.
*/
WITH attendance_ratio_cal AS (
    SELECT student_id, 
        ((present_days * 1.0) / NULLIF(total_days, 0)) AS attendance_ratio
    FROM attendance
)

SELECT student_id,
        CASE 
            WHEN attendance_ratio IS NULL THEN 'unknown'
            WHEN attendance_ratio >= 0.9 THEN 'good'
            WHEN attendance_ratio >= 0.7 THEN 'okay'
            ELSE 'poor'
        END AS status
FROM attendance_ratio_cal
ORDER BY student_id

