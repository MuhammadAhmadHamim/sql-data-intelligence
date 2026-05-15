/*
For each employee return their name, department, and a tier column built like this:

    'partner' when salary >= 150000 (any department)
    'senior' when department = 'eng' and salary >= 100000
    'mid' when salary >= 60000
    'entry' otherwise

Order by salary descending. Note that the order of the WHEN branches matters: the first match wins.
*/
SELECT name, department,
        -- tier with multiple WHEN branches that mix salary and department
        CASE
            WHEN salary >= 150000 THEN 'partner'
            WHEN salary >= 100000 AND department = 'eng' THEN 'senior'
            WHEN salary >= 60000 THEN 'mid'
            ELSE 'entry'
        END AS tier
FROM employees
ORDER BY salary DESC;