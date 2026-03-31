-- ========================================
-- CHALLENGE 2: Calculate Product Quality
-- Difficulty: Easy
-- ========================================

/*
OBJECTIVE:
Calculate the quality score for each part using the adjusted watt value
from Challenge 1.

FORMULA:
quality = (rpm × adjusted_watt) / size

OUTPUT COLUMNS:
- part_id
- quality
*/

WITH adjusted_watt AS (
    SELECT 
        part_id,
        rpm,
        watt + (SELECT AVG(watt) FROM enom_gilpane) AS adjusted_watt,
        size
    FROM enom_gilpane
)
SELECT 
    part_id,
    (rpm * adjusted_watt) / size AS quality
FROM adjusted_watt;
