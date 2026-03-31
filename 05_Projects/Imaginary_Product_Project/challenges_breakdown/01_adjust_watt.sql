-- ========================================
-- CHALLENGE 1: Adjust Watt
-- Difficulty: Easy
-- ========================================

/*
OBJECTIVE:
For each part in the enom_gilpane product, adjust the watt value by adding 
the overall average watt (calculated across all parts in this product).

FORMULA:
adjusted_watt = watt + AVG(watt) for enom_gilpane

OUTPUT COLUMNS:
- part_id
- rpm
- adjusted_watt
- size
*/

SELECT 
    part_id,
    rpm,
    watt + (SELECT AVG(watt) FROM enom_gilpane) AS adjusted_watt,
    size
FROM enom_gilpane;
