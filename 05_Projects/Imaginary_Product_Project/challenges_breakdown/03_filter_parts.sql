-- ========================================
-- CHALLENGE 3: Expand To Other Products
-- Difficulty: Easy
-- ========================================

/*
OBJECTIVE:
Keep only the parts that have a quality value greater than the average 
quality for the enom_gilpane product.

FILTERING LOGIC:
WHERE quality > AVG(quality)

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
),
computed_quality AS (
    SELECT 
        part_id,
        (rpm * adjusted_watt) / size AS quality
    FROM adjusted_watt
)
SELECT *
FROM computed_quality
WHERE quality > (SELECT AVG(quality) FROM computed_quality);
