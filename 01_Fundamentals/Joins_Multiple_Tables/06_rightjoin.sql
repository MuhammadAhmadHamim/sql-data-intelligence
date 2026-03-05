/*
Challenge 2: The "Orphaned" Data Check (RIGHT JOIN)
The Setup: You have a drivers table and a vehicles table.

Goal: List all vehicle_plate numbers and the driver_name assigned to them.

The Catch: Use a RIGHT JOIN to ensure that every single vehicle is listed, even if it currently has no driver assigned to it.
*/
SELECT v.plate AS vehicle_plate, d.name AS driver_names
FROM drivers AS d
RIGHT JOIN vehicles AS v ON d.id = v.driver_id
ORDER BY v.id;