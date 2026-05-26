-- Find users who watched more than one movie
SELECT User_Name
FROM Users U
WHERE
(
    SELECT COUNT(*)
    FROM Watch_History W
    WHERE W.User_ID = U.User_ID
) > 1;