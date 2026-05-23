-- Find movies watched by users from Pakistan
SELECT Movie_Name
FROM Movies
WHERE Movie_ID IN
(
    SELECT Movie_ID
    FROM Watch_History
    WHERE User_ID IN
    (
        SELECT User_ID
        FROM Users
        WHERE Country = 'Pakistan'
    )
);