/* 
Topic: Date Filtering in SQLite
Fetch all of the game ids that are not played in the winter.
Winter dates are: 2022-12-21 - 2023-03-20. 
Only these days should not be included.
Sort them by the date in descending order and rename the column to game
*/

SELECT id AS game
FROM games
-- This query filters games outside of a specific winter range.
WHERE date < '2022-12-21' OR date > '2023-03-20'
ORDER BY date DESC

-- Note: SQLite treats dates as strings in ISO 8601 format (YYYY-MM-DD).