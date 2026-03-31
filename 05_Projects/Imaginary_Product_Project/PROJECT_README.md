# 🏭 Imaginary Product Factory — Quality Analysis Project

## 📋 Project Overview

You are a procurement specialist visiting an imaginary product factory. Your mission: **identify the highest-quality parts across multiple product lines** to make informed purchasing decisions for your industry.

The factory produces **4 distinct products**, each composed of multiple parts. Every part is evaluated based on technical specifications, and your job is to analyze these specifications to determine which parts meet your quality standards.

---

## 🎯 Business Objective

**Goal**: Calculate a composite quality metric for each part across all products and identify the parts with the highest average quality.

**Why This Matters**: 
- Quality-driven procurement reduces operational failures
- Cross-product comparison reveals the best-performing part designs
- Data-driven decision making improves supply chain efficiency

---

## 📊 Data Schema

All products share the same schema structure:

| Column | Type | Description |
|--------|------|-------------|
| `part_id` | INTEGER | Unique identifier for each part design |
| `rpm` | INTEGER | Revolutions per minute (speed rating) |
| `watt` | INTEGER | Power consumption in watts |
| `size` | INTEGER | Physical size metric |

### Available Products (Tables)

1. **enom_gilpane** — Product Line A
2. **castle_loctus** — Product Line B
3. **honpan_bilopsa** — Product Line C
4. **yurnol_qoltam** — Product Line D

---

## 🧮 Quality Calculation Methodology

The quality score is derived using the following multi-step process:

### Step 1: Adjust Watt Values
For each part, normalize the watt value by adding the product-specific average:

```
adjusted_watt = watt + AVG(watt) for that product
```

**Why?** This normalization accounts for baseline power differences between product lines.

### Step 2: Calculate Quality Score
Apply the quality formula:

```
quality = (rpm × adjusted_watt) / size
```

**Interpretation**: Higher RPM and wattage relative to size indicates better performance-to-footprint ratio.

### Step 3: Filter Above-Average Parts
Keep only parts that exceed the average quality within their product line:

```
WHERE quality > AVG(quality) for that product
```

**Why?** We're interested in **top performers only**, not all parts.

### Step 4: Combine All Products
Merge filtered results from all 4 product lines using `UNION ALL`.

### Step 5: Calculate Overall Average Quality
Group by `part_id` across all products to find the best-performing part designs factory-wide:

```
AVG(quality) by part_id
```

---

## 🚀 Challenge Progression

This project is broken into **5 progressive challenges**, each building on the previous:

| # | Challenge | Difficulty | Focus |
|---|-----------|------------|-------|
| 1 | Adjust Watt | Easy | Scalar calculations & AVG() |
| 2 | Calculate Product Quality | Easy | Formula application |
| 3 | Expand To Other Products | Easy | Filtering with subqueries |
| 4 | Combine All Products | Medium | UNION ALL & CTEs |
| 5 | The Overall Average | Easy | GROUP BY & final aggregation |

---

## 💻 Solution: Complete Query

```sql
WITH 
-- ========================================
-- PRODUCT 1: enom_gilpane
-- ========================================
adjusted_watt_1 AS (
    SELECT 
        part_id, 
        rpm, 
        watt + (SELECT AVG(watt) FROM enom_gilpane) AS adjusted_watt, 
        size
    FROM enom_gilpane
),
computed_quality_1 AS (
    SELECT 
        part_id, 
        (rpm * adjusted_watt) / size AS quality
    FROM adjusted_watt_1
),
filtered_quality_1 AS (
    SELECT *
    FROM computed_quality_1
    WHERE quality > (SELECT AVG(quality) FROM computed_quality_1)
),

-- ========================================
-- PRODUCT 2: castle_loctus
-- ========================================
adjusted_watt_2 AS (
    SELECT 
        part_id, 
        rpm, 
        watt + (SELECT AVG(watt) FROM castle_loctus) AS adjusted_watt, 
        size
    FROM castle_loctus
),
computed_quality_2 AS (
    SELECT 
        part_id, 
        (rpm * adjusted_watt) / size AS quality
    FROM adjusted_watt_2
),
filtered_quality_2 AS (
    SELECT *
    FROM computed_quality_2
    WHERE quality > (SELECT AVG(quality) FROM computed_quality_2)
),

-- ========================================
-- PRODUCT 3: honpan_bilopsa
-- ========================================
adjusted_watt_3 AS (
    SELECT 
        part_id, 
        rpm, 
        watt + (SELECT AVG(watt) FROM honpan_bilopsa) AS adjusted_watt, 
        size
    FROM honpan_bilopsa
),
computed_quality_3 AS (
    SELECT 
        part_id, 
        (rpm * adjusted_watt) / size AS quality
    FROM adjusted_watt_3
),
filtered_quality_3 AS (
    SELECT *
    FROM computed_quality_3
    WHERE quality > (SELECT AVG(quality) FROM computed_quality_3)
),

-- ========================================
-- PRODUCT 4: yurnol_qoltam
-- ========================================
adjusted_watt_4 AS (
    SELECT 
        part_id, 
        rpm, 
        watt + (SELECT AVG(watt) FROM yurnol_qoltam) AS adjusted_watt, 
        size
    FROM yurnol_qoltam
),
computed_quality_4 AS (
    SELECT 
        part_id, 
        (rpm * adjusted_watt) / size AS quality
    FROM adjusted_watt_4
),
filtered_quality_4 AS (
    SELECT *
    FROM computed_quality_4
    WHERE quality > (SELECT AVG(quality) FROM computed_quality_4)
),

-- ========================================
-- COMBINE ALL PRODUCTS
-- ========================================
quality_table AS (
    SELECT * FROM filtered_quality_1
    UNION ALL
    SELECT * FROM filtered_quality_2
    UNION ALL
    SELECT * FROM filtered_quality_3
    UNION ALL
    SELECT * FROM filtered_quality_4
)

-- ========================================
-- FINAL OUTPUT: Overall Average Quality
-- ========================================
SELECT 
    part_id,
    AVG(quality) AS avg_quality
FROM quality_table
GROUP BY part_id
ORDER BY avg_quality DESC;
```

---

## 📈 Expected Output

| part_id | avg_quality |
|---------|-------------|
| 42      | 1523.75     |
| 17      | 1489.33     |
| 8       | 1401.50     |
| ...     | ...         |

**Interpretation**: 
- Part ID 42 has the highest average quality across all product lines
- These parts should be prioritized for procurement

---

## 🧠 Key SQL Concepts Demonstrated

✅ **Common Table Expressions (CTEs)** — Breaking complex logic into readable steps  
✅ **Subqueries** — Dynamic calculations using `AVG()`  
✅ **UNION ALL** — Combining results from multiple tables  
✅ **Window Functions** — Implicit use through aggregation and filtering  
✅ **GROUP BY** — Aggregating across multiple instances of the same part  
✅ **ORDER BY** — Ranking results by quality  

---

## 🔍 Query Walkthrough

### Why Multiple CTEs?

Each product requires **independent processing** because:
1. Watt adjustments are product-specific
2. Quality thresholds differ per product line
3. We need to filter **before** combining, not after

### Why UNION ALL (not UNION)?

- We want **all qualifying parts**, even if they appear in multiple product lines
- `UNION` would deduplicate identical `part_id + quality` pairs
- `UNION ALL` preserves all instances for accurate averaging

### Why Filter Before Combining?

Filtering happens **per product** to ensure we're comparing parts against their peers within the same product line — not across the entire factory prematurely.

---

## 🎓 Learning Outcomes

By completing this project, you will:

- ✅ Understand multi-step analytical workflows
- ✅ Master CTEs for query organization
- ✅ Learn when to use UNION vs UNION ALL
- ✅ Practice aggregate functions with filtering
- ✅ Apply SQL to real-world business scenarios

---

## 📂 Project Files

```
Imaginary_Product_Project/
├── README.md                    # This file
├── schema.sql                   # Table creation scripts
├── sample_data.sql              # Sample data for testing
├── quality_analysis.sql         # Complete solution query
|
└── challenge_breakdown/
    ├── 01_adjust_watt.sql
    ├── 02_calculate_quality.sql
    ├── 03_filter_parts.sql
    ├── 04_combine_products.sql
    └── 05_overall_average.sql
```

---

## 🚀 Next Steps

1. **Run the query** on your database
2. **Analyze the results** — Which part IDs dominate?
3. **Experiment** — What happens if you change the quality formula?
4. **Extend** — Add more products or introduce new metrics (cost, durability, etc.)

---

**📌 Note**: This is a fictional scenario designed to practice SQL in a realistic analytical context. The product names and data are imaginary, but the skills are real-world applicable.
