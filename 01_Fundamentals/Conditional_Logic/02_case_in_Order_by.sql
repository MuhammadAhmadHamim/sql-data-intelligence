/*
Return title and priority, 
ordered so that 'critical' comes first, then 'high', then 'low', and anything else last.
Within the same priority, sort by title alphabetically.
*/
SELECT title, priority
FROM tasks
ORDER BY
    CASE priority
        WHEN 'critical' THEN 1
        WHEN 'high' THEN 2
        WHEN 'low' THEN 3
        ELSE 4
    END, title ASC;
