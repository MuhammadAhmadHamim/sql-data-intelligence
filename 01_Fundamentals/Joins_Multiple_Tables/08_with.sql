/*
write a query that:

(i)  First identifies "large devices" (devices with width greater than 200)
(ii) Then calculates the average score for these large devices. Call this column as average_score

Use the WITH clause to solve this problem.
*/
WITH large_devices AS (
    SELECT device_id 
    FROM devices_specs
    WHERE width > 200
)
SELECT AVG(score) AS average_score
FROM devices_score
WHERE device_id IN large_devices