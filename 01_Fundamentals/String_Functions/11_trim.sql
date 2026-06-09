/*
Each phone may include leading/trailing spaces and any number of - separators.
Return id and a column clean with all spaces and dashes removed.
Order by id.
*/
SELECT id,
        -- strip spaces and dashes
        REPLACE(REPLACE(TRIM(phone), '-', ''), ' ', '') AS clean
FROM contacts
ORDER BY id;