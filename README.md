<div align="center">

<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:0a0d12,40:0f2027,100:1a3a4a&height=230&section=header&text=sql-data-intelligence&fontSize=46&fontColor=e8c97a&fontAlignY=40&desc=Relational%20Design%20%E2%80%A2%20Query%20Craft%20%E2%80%A2%20Data%20Thinking&descAlignY=63&descColor=7ec8c8&animation=fadeIn&fontFamily=Georgia"/>

<br/>

![Language](https://img.shields.io/badge/Language-SQL-e8c97a?style=for-the-badge&logo=databricks&logoColor=black)
![Engines](https://img.shields.io/badge/Engines-MySQL_%7C_SQLite-1a3a4a?style=for-the-badge&logo=mysql&logoColor=white)
![Semester](https://img.shields.io/badge/Semester-3-0f6b6b?style=for-the-badge&logo=semester&logoColor=white)
![Status](https://img.shields.io/badge/Status-🔨_Actively_Growing-e8c97a?style=for-the-badge&logoColor=black)

<br/><br/>

> *"Without data, you're just another person with an opinion."*
> — **W. Edwards Deming**

<br/>

</div>

---

## ◈ What Lives Here

This is a living repository — still being written, still growing. It's the Semester 3 archive for everything **SQL**: fundamentals drilled from the ground up, schema design, real database engines, case studies across SQLite and MySQL, and the beginnings of project-level work.

Unlike the previous semesters, this one isn't sealed. New queries get added. New case studies land. The certifications folder is waiting to be filled. Come back and it'll be bigger than you left it.

---

## ◈ Vault Structure

```
sql-data-intelligence/
│
├── 📘 01_SQL_Fundamentals/
│       ├── SELECT_Basics/
│       ├── Filtering_WHERE/
│       ├── Sorting_ORDER_BY/
│       ├── Arithmetic_Operations/
│       ├── String_Functions/
│       ├── Date_Functions/
│       ├── Aggregate_Functions/
│       ├── GROUP_BY_HAVING/
│       ├── Subqueries/
│       ├── Joins_Multiple_Tables/
│       ├── Window_Functions/
│       ├── INSERT_Data/                    
│       ├── UPDATE_DELETE_Data/             
│       ├── Transactions_Basics/
|       └── Theory/
|           ├── Relational_Algebra/            
│
├── 🏗️ 02_Database_Design/
│       ├── ER_Diagrams/
│       ├── CREATE_TABLE/                  
│       ├── Data_Types/                     
│       ├── Constraints/
│       └── Normalization/                    
│
├── ⚡ 03_Advanced_Topics/
│       └── → Exploration of advanced topics of SQL including CTEs_Recursive_Queries,
|               Query_Optimization, Indexing, ALTER_DROP_Operations, MERGE_UPSERT,
|                Advanced_Transactions, Views, Triggers, Stored_Procedures and many more.
│
├── 🔍 04_Case_Studies/
│       ├── SQLite/
│       │   └── Intro_Challenges/
│       └── MySQL/
│           └── Practice_queries/
│
├── 🚀 05_Projects/
│       └── Imaginary_Product_Project/
│           ├── PROJECT_README.md            # README file
|           ├── schema.sql                   # Table creation scripts
|           ├── sample_data.sql              # Sample data for testing
|           ├── quality_analysis.sql         # Complete solution query
|           └── challenges_breakdown/
│
├── 🐍 06_SQL_with_Python/
│       └── → Integration of SQL with Python for data extraction,
│             analysis, and workflow automation.
│
├── 🏆 07_Certifications/
│       └── → Verified certifications and achievements from platforms
│             like HackerRank, Oracle, etc.
│
└── README.md
```

---

## ◈ Chapter Breakdown

<details>
<summary><b>📘 01 — Fundamentals &nbsp;|&nbsp; The Query Foundation</b></summary>
<br/>
Every SQL skill is built on these. This chapter is a thorough ground-up study of the language — not just syntax, but *thinking relationally*.
 
| Module | What Was Covered |
|---|---|
| **SELECT Basics** | Projection, aliasing, selecting from tables |
| **Filtering with WHERE** | Conditions, comparison operators, `BETWEEN`, `IN`, `LIKE`, `NULL` |
| **Sorting with ORDER BY** | `ASC` / `DESC`, multi-column sorts, `NULLS FIRST/LAST` |
| **Arithmetic Expressions** | Column-level calculations, derived fields |
| **String Functions** | `UPPER`, `LOWER`, `CONCAT`, `TRIM`, `SUBSTRING`, `REPLACE` |
| **Date Functions** | `NOW()`, `DATEDIFF`, `DATE_FORMAT`, temporal arithmetic |
| **Aggregate Functions** | `COUNT`, `SUM`, `AVG`, `MIN`, `MAX` |
| **GROUP BY & HAVING** | Grouping rows, filtering aggregates, nested logic |
| **Subqueries** | Scalar, correlated, and nested subqueries |
| **Joins** | `INNER`, `LEFT`, `RIGHT`, `FULL OUTER`, multi-table joins |
| **Window Functions** | `ROW_NUMBER`, `RANK`, `DENSE_RANK`, `LEAD`, `LAG`, `OVER()` |
| **INSERT Data** | Basic `INSERT` syntax, multiple rows, `INSERT...SELECT` |
| **UPDATE & DELETE Data** | Modifying existing records, `UPDATE` with joins, safe deletions |
| **Transactions Basics** | `BEGIN`, `COMMIT`, `ROLLBACK`, ensuring data consistency |
| **Theory** | Optional theoretical foundations including Relational Algebra |
 
> This is the longest chapter — and intentionally so. Fundamentals done properly are what every advanced query is built on. The Theory section provides optional deeper understanding for those curious about the mathematical foundations of SQL.
 
</details>

<details>
<summary><b>🏗️ 02 — Database Design &nbsp;|&nbsp; Before the First Query</b></summary>
<br/>
Good queries start with good schemas. This chapter is about learning to *design* databases — understanding how data relates before a single row is inserted.
 
| Module | What's Covered |
|---|---|
| **ER Diagrams** | Entity-relationship modeling, cardinality, primary & foreign keys |
| **CREATE TABLE** | Table creation syntax, defining structure with DDL |
| **Data Types** | Choosing appropriate types: `INT`, `VARCHAR`, `DATE`, `DECIMAL`, etc. |
| **Constraints** | `PRIMARY KEY`, `FOREIGN KEY`, `UNIQUE`, `CHECK`, `NOT NULL`, `DEFAULT` |
| **Normalization** | 1NF, 2NF, 3NF, BCNF — eliminating redundancy and anomalies |
 
> Schema design is the silent skill that determines whether a database scales gracefully or collapses under its own weight. Normalization ensures your data remains consistent and efficient.
 
</details>

<details>
<summary><b>⚡ 03 — Advanced Topics &nbsp;|&nbsp; Beyond Queries, Into Systems</b></summary>
<br/>
This chapter brings together everything that makes SQL powerful beyond basic querying — from writing cleaner, more expressive queries to building intelligence directly into the database itself.
 
| Module | What's Covered |
|---|---|
| **CTEs & Recursive Queries** | Common Table Expressions, hierarchical data traversal, self-referencing structures |
| **Query Optimization** | Execution plans, cost analysis, writing efficient queries |
| **Indexing** | Index types, when to index, trade-offs, and performance impact |
| **ALTER & DROP Operations** | Modifying schemas, adding/removing columns, managing tables |
| **MERGE & UPSERT** | Insert-or-update logic, handling duplicates, conflict resolution |
| **Advanced Transactions** | Savepoints, isolation levels, handling concurrent access |
| **Views** | Reusable query abstractions, security layers, simplifying complex joins |
| **Triggers** | Event-driven automation, maintaining data integrity, audit trails |
| **Stored Procedures** | Encapsulating business logic, parameterized operations, database-side functions |
 
> This is where SQL stops being just a query language and becomes a system design tool — combining expressive syntax with database-embedded logic.
 
</details>

<details>
<summary><b>🔍 04 — Case Studies &nbsp;|&nbsp; Real Engines, Real Problems</b></summary>
<br/>

Two database engines. Two different contexts. Same SQL discipline applied across both.

**SQLite — Intro Challenges**
Lightweight, file-based, and perfect for learning query logic without infrastructure overhead. These challenges focus on solving problems with clean, precise SQL.

**MySQL — Practice Queries**
The industry-standard relational engine. Practice queries here deal with more complex schemas, multi-table logic, and the specific syntax and functions MySQL brings to the table.

</details>

<details>
<summary><b>🚀 05 — Projects &nbsp;|&nbsp; Putting It All Together</b></summary>
<br/>

**Imaginary Product Project** — A self-contained database project simulating a product factory's quality control system. You are a procurement specialist analyzing technical specifications across four product lines to identify the highest-quality parts for purchase. The project features custom schema design, multi-table analysis with CTEs, advanced filtering logic, and cross-product quality aggregation to answer the core business question: "Which part designs consistently deliver the best performance across all product lines?"

This is where the fundamentals stop being exercises and start being *applied*.

</details>

<details>
<summary><b>🐍 06 — SQL with Python &nbsp;|&nbsp; From Queries to Workflows</b></summary>
<br/>

SQL doesn't exist in isolation in real-world systems. This chapter introduces integration with Python for building data workflows and analytical pipelines.

Planned topics include:

- Connecting to databases using Python
- Executing SQL queries programmatically
- Fetching and processing results
- Combining SQL with data analysis libraries

> This is the bridge between database querying and real-world data applications.

</details>

<details>
<summary><b>🏆 07 — Certifications &nbsp;|&nbsp; In Progress</b></summary>
<br/>

This folder is reserved for completed SQL certifications and their associated materials. Currently being filled — check back as the semester progresses.

</details>

---

## ◈ A Query Worth Showing

```sql
-- What does this repo look like, expressed in SQL?

SELECT
    chapter,
    topic,
    COUNT(*)              AS files_written,
    MAX(complexity_level) AS peak_difficulty,
    RANK() OVER (
        ORDER BY COUNT(*) DESC
    )                     AS depth_rank
FROM sql_data_intelligence
WHERE semester = 3
  AND still_learning = TRUE
GROUP BY chapter, topic
ORDER BY depth_rank;
```

---

## ◈ Engines in Use

<div align="center">

| Engine | Use Case | Status |
|:---:|:---:|:---:|
| ![SQLite](https://img.shields.io/badge/SQLite-003B57?style=flat-square&logo=sqlite&logoColor=white) | Intro challenges, local practice | ✅ Active |
| ![MySQL](https://img.shields.io/badge/MySQL-1a3a4a?style=flat-square&logo=mysql&logoColor=e8c97a) | Practice queries, project backend | ✅ Active |

</div>

---

## ◈ How to Explore

```bash
# Clone the repository
git clone https://github.com/MuhammadAhmadHamim/sql-data-intelligence.git
cd sql-data-intelligence

# Run any .sql file in MySQL
mysql -u root -p your_database < 04_Case_Studies/MySQL/Practice_queries/01_practiceQueries.sql

# Run any .sql file in SQLite
sqlite3 database.db < 04_Case_Studies/SQLite/Intro_Challenges/01_parliamentaryElection.sql
```

> **MySQL:** v8.0+ recommended &nbsp;|&nbsp; **SQLite:** v3.x &nbsp;|&nbsp; **GUI:** DBeaver, TablePlus, or MySQL Workbench

---

## ◈ Skills Being Forged

<div align="center">

![](https://img.shields.io/badge/SQL-Query_Design-e8c97a?style=flat-square&logo=databricks&logoColor=black)
![](https://img.shields.io/badge/SQL-Window_Functions-0f6b6b?style=flat-square&logo=databricks&logoColor=white)
![](https://img.shields.io/badge/SQL-Joins_%26_Subqueries-1a3a4a?style=flat-square&logo=databricks&logoColor=white)
![](https://img.shields.io/badge/SQL-Schema_%26_ER_Design-7ec8c8?style=flat-square&logo=databricks&logoColor=black)
![](https://img.shields.io/badge/MySQL-Relational_Engines-e8c97a?style=flat-square&logo=mysql&logoColor=black)
![](https://img.shields.io/badge/SQLite-Lightweight_DB-0a0d12?style=flat-square&logo=sqlite&logoColor=7ec8c8)

</div>

---

## ◈ A Note on This Work

The first two semesters have archived, sealed repos. This one is different — it's still open, still being written. Every week something new gets added: a trickier query, a more complex schema, a new case study challenge.

SQL is not a language you learn once. It's a language you keep getting better at. This repository is proof of that process, in real time.

---

<div align="center">

<img width="100%" src="https://capsule-render.vercel.app/api?type=waving&color=0:1a3a4a,50:0f2027,100:0a0d12&height=120&section=footer&animation=fadeIn"/>

*Queried with curiosity. Designed with intent.*

</div>
