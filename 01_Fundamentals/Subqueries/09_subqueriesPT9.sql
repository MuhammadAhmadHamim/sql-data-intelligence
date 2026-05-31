-- Find movies with rating higher than ANY action movie
SELECT Movie_Name, Rating
FROM Movies
WHERE Rating > ANY
(
    SELECT Rating
    FROM Movies
    WHERE Genre = 'Action'
);