-- Find users who watched at least one movie
SELECT User_Name
FROM Users U
WHERE EXISTS
(
    SELECT *
    FROM Watch_History W
    WHERE W.User_ID = U.User_ID
);