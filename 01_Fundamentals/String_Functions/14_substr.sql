/*
Each filename is exactly four characters followed by a three-character extension (e.g. 'note.txt').
Return id, the four-character base as base, and the three-character extension as ext.
Order by id.
*/
SELECT id,
        -- base = first 4 chars, ext = last 3 chars
        SUBSTR(filename, 1, 4) AS base,
        SUBSTR(filename, -3) AS ext
FROM files
ORDER BY id
