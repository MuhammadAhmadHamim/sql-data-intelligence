--Fetch the IDs of all events that last less than three days
SELECT id
FROM events
WHERE JULIANDAY(end) - JULIANDAY(start) < 3

-- Note: SQLite treats dates as strings in ISO 8601 format (YYYY-MM-DD).

