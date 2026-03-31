-- ========================================
-- CHALLENGE 4: Combine All Products
-- Difficulty: Medium
-- ========================================

/*
OBJECTIVE:
Apply the same quality calculation logic to all 4 products and combine
the results using UNION ALL.

PRODUCTS:
1. enom_gilpane
2. castle_loctus
3. honpan_bilopsa
4. yurnol_qoltam

OUTPUT COLUMNS:
- part_id
- quality
*/

WITH 
-- Product 1: enom_gilpane
adjusted_watt_1 AS (
    SELECT part_id, rpm, watt + (SELECT AVG(watt) FROM enom_gilpane) AS adjusted_watt, size
    FROM enom_gilpane
),
computed_quality_1 AS (
    SELECT part_id, (rpm * adjusted_watt) / size AS quality
    FROM adjusted_watt_1
),
filtered_quality_1 AS (
    SELECT *
    FROM computed_quality_1
    WHERE quality > (SELECT AVG(quality) FROM computed_quality_1)
),

-- Product 2: castle_loctus
adjusted_watt_2 AS (
    SELECT part_id, rpm, watt + (SELECT AVG(watt) FROM castle_loctus) AS adjusted_watt, size
    FROM castle_loctus
),
computed_quality_2 AS (
    SELECT part_id, (rpm * adjusted_watt) / size AS quality
    FROM adjusted_watt_2
),
filtered_quality_2 AS (
    SELECT *
    FROM computed_quality_2
    WHERE quality > (SELECT AVG(quality) FROM computed_quality_2)
),

-- Product 3: honpan_bilopsa
adjusted_watt_3 AS (
    SELECT part_id, rpm, watt + (SELECT AVG(watt) FROM honpan_bilopsa) AS adjusted_watt, size
    FROM honpan_bilopsa
),
computed_quality_3 AS (
    SELECT part_id, (rpm * adjusted_watt) / size AS quality
    FROM adjusted_watt_3
),
filtered_quality_3 AS (
    SELECT *
    FROM computed_quality_3
    WHERE quality > (SELECT AVG(quality) FROM computed_quality_3)
),

-- Product 4: yurnol_qoltam
adjusted_watt_4 AS (
    SELECT part_id, rpm, watt + (SELECT AVG(watt) FROM yurnol_qoltam) AS adjusted_watt, size
    FROM yurnol_qoltam
),
computed_quality_4 AS (
    SELECT part_id, (rpm * adjusted_watt) / size AS quality
    FROM adjusted_watt_4
),
filtered_quality_4 AS (
    SELECT *
    FROM computed_quality_4
    WHERE quality > (SELECT AVG(quality) FROM computed_quality_4)
)

-- Combine all products
SELECT * FROM filtered_quality_1
UNION ALL
SELECT * FROM filtered_quality_2
UNION ALL
SELECT * FROM filtered_quality_3
UNION ALL
SELECT * FROM filtered_quality_4;
