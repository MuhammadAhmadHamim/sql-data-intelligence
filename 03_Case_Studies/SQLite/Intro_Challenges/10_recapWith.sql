/*
A device's quality is measured by (width/height)*num_features.

We want to find all of the overrated devices.
Fetch all of the devices where the device's opinion is greater than the average quality 
and the device's score is less than the average quality.
Return only the device_id.

To solve it, use the WITH clause to create a subquery that calculates the average quality and reuse it in the main query.
*/
WITH average_calculation AS(
    SELECT AVG((width/height)*num_features) AS average_score
    FROM devices_specs
)
SELECT devices_specs.device_id
FROM devices_specs 
INNER JOIN devices_score ON devices_specs.device_id = devices_score.device_id
INNER JOIN average_calculation  
WHERE devices_specs.opinion > average_calculation.average_score
AND devices_score.score < average_calculation.average_score