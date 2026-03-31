-- ========================================
-- IMAGINARY PRODUCT
-- Sample Data for Testing
-- ========================================

/*
This file contains sample data for all 4 product tables.
Use this data to test and validate your queries.
*/

-- ========================================
-- Product 1: enom_gilpane
-- ========================================
INSERT INTO enom_gilpane (part_id, rpm, watt, size) VALUES
(1, 1200, 150, 5),
(2, 1500, 180, 6),
(3, 1800, 200, 7),
(4, 1100, 140, 4),
(5, 1600, 190, 8),
(6, 1400, 160, 5),
(7, 1700, 210, 9),
(8, 1300, 170, 6);

-- ========================================
-- Product 2: castle_loctus
-- ========================================
INSERT INTO castle_loctus (part_id, rpm, watt, size) VALUES
(1, 1000, 120, 4),
(2, 1400, 165, 5),
(3, 1900, 220, 8),
(4, 1250, 155, 6),
(5, 1550, 185, 7),
(6, 1350, 175, 6),
(7, 1650, 195, 8),
(8, 1450, 180, 7);

-- ========================================
-- Product 3: honpan_bilopsa
-- ========================================
INSERT INTO honpan_bilopsa (part_id, rpm, watt, size) VALUES
(1, 1100, 130, 5),
(2, 1600, 200, 7),
(3, 2000, 250, 10),
(4, 1300, 160, 6),
(5, 1700, 210, 8),
(6, 1500, 190, 7),
(7, 1800, 230, 9),
(8, 1400, 170, 6);

-- ========================================
-- Product 4: yurnol_qoltam
-- ========================================
INSERT INTO yurnol_qoltam (part_id, rpm, watt, size) VALUES
(1, 950, 110, 4),
(2, 1350, 155, 5),
(3, 1850, 215, 8),
(4, 1150, 145, 5),
(5, 1450, 175, 6),
(6, 1250, 165, 6),
(7, 1550, 185, 7),
(8, 1750, 205, 8);

-- ========================================
-- Data Statistics
-- ========================================

/*
Each product contains 8 parts (part_id 1-8).
The same part_id across products may have different specifications.

This allows us to:
1. Calculate quality per product
2. Filter above-average parts per product
3. Compare the same part_id across different products
4. Identify which part designs perform consistently well

Expected behavior:
- Some part_ids will appear in all 4 products after filtering
- Some will appear in only 1-3 products
- The final average will reveal the overall best performers
*/
