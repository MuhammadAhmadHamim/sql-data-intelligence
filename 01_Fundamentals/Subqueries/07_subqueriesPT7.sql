-- Find average watch time
SELECT AVG(Total_Watch_Time) AS Average_Time
FROM
(
    SELECT Watch_Time AS Total_Watch_Time
    FROM Watch_History
) AS WatchData;