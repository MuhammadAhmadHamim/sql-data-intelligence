/*
Return one row per user with:

-> id
-> label: display_name if set, else email, else 'unknown'
-> total_spent: sum of the user's order amounts; users with no orders should show 0 (not NULL)

Order by id.
Hint: a LEFT JOIN from users to orders plus COALESCE(SUM(...), 0) handles the missing rows.
*/
SELECT u.id,
        -- label via COALESCE
        COALESCE(display_name, email, 'unknown') AS label,
        -- total_spent via COALESCE(SUM(...), 0)
        COALESCE(SUM(amount), 0) AS total_spent
FROM users u
LEFT JOIN orders AS o ON o.user_id = u.id
GROUP BY u.id
ORDER BY u.id;