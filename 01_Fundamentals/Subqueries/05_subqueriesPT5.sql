-- Find users with subscriptions
SELECT User_Name
FROM Users
WHERE User_ID IN
(
    SELECT User_ID
    FROM Subscription
);