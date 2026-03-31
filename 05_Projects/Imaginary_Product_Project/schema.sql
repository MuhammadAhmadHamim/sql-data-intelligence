-- ========================================
-- IMAGINARY PRODUCT
-- Database Schema Definition
-- ========================================

/*
This schema defines 4 product tables, each representing a different
product line in the imaginary factory. All products share the same
structure but contain different parts data.
*/

-- ========================================
-- Product 1: enom_gilpane
-- ========================================
CREATE TABLE enom_gilpane (
    part_id INTEGER PRIMARY KEY,
    rpm INTEGER NOT NULL,
    watt INTEGER NOT NULL,
    size INTEGER NOT NULL,
    CONSTRAINT rpm_positive CHECK (rpm > 0),
    CONSTRAINT watt_positive CHECK (watt > 0),
    CONSTRAINT size_positive CHECK (size > 0)
);

-- ========================================
-- Product 2: castle_loctus
-- ========================================
CREATE TABLE castle_loctus (
    part_id INTEGER PRIMARY KEY,
    rpm INTEGER NOT NULL,
    watt INTEGER NOT NULL,
    size INTEGER NOT NULL,
    CONSTRAINT rpm_positive CHECK (rpm > 0),
    CONSTRAINT watt_positive CHECK (watt > 0),
    CONSTRAINT size_positive CHECK (size > 0)
);

-- ========================================
-- Product 3: honpan_bilopsa
-- ========================================
CREATE TABLE honpan_bilopsa (
    part_id INTEGER PRIMARY KEY,
    rpm INTEGER NOT NULL,
    watt INTEGER NOT NULL,
    size INTEGER NOT NULL,
    CONSTRAINT rpm_positive CHECK (rpm > 0),
    CONSTRAINT watt_positive CHECK (watt > 0),
    CONSTRAINT size_positive CHECK (size > 0)
);

-- ========================================
-- Product 4: yurnol_qoltam
-- ========================================
CREATE TABLE yurnol_qoltam (
    part_id INTEGER PRIMARY KEY,
    rpm INTEGER NOT NULL,
    watt INTEGER NOT NULL,
    size INTEGER NOT NULL,
    CONSTRAINT rpm_positive CHECK (rpm > 0),
    CONSTRAINT watt_positive CHECK (watt > 0),
    CONSTRAINT size_positive CHECK (size > 0)
);

-- ========================================
-- Column Descriptions
-- ========================================

/*
part_id:  Unique identifier for each part design
rpm:      Revolutions per minute (speed rating)
watt:     Power consumption in watts
size:     Physical size metric (arbitrary units)

All columns use INTEGER type for simplicity.
CHECK constraints ensure all values are positive.
*/
