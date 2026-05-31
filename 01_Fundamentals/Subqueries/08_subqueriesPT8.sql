-- Find movies with rating higher than ALL drama movies
SELECT Movie_Name, Rating
FROM Movies
WHERE Rating > ALL
(
    SELECT Rating
    FROM Movies
    WHERE Genre = 'Drama'
);