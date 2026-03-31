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
│       └── Window_Functions/
│
├── 🏗️ 02_Database_Design/
│       └── ER_Diagrams/
│
├── ⚡ 03_Advanced_SQL/
│       └── → Advanced SQL concepts such as CTEs, recursive queries,
│             indexing, and query optimization techniques.
│
├── ⚙️ 04_SQL_Programming/
│       └── → Database programming concepts including views,
│             triggers, and stored procedures.
│
├── 🔍 05_Case_Studies/
│       ├── SQLite/
│       │   └── Intro_Challenges/
│       └── MySQL/
│           └── Practice_queries/
│
├── 🚀 06_Projects/
│       └── Imaginary_Product_Project/
│               → This project will simulate a real-world product system
│                 including schema design, operations, and analytical queries.
│
├── 🐍 07_SQL_with_Python/
│       └── → Integration of SQL with Python for data extraction,
│             analysis, and workflow automation.
│
├── 🏆 08_Certifications/
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

> This is the longest chapter — and intentionally so. Fundamentals done properly are what every advanced query is built on.

</details>

<details>
<summary><b>🏗️ 02 — Database Design &nbsp;|&nbsp; Before the First Query</b></summary>
<br/>

Good queries start with good schemas. This chapter is about learning to *design* databases — understanding how data relates before a single row is inserted.

| Module | What Was Covered |
|---|---|
| **ER Diagrams** | Entity-relationship modeling, cardinality, primary & foreign keys |

> Schema design is the silent skill that determines whether a database scales gracefully or collapses under its own weight.

</details>

<details>
<summary><b>⚡ 03 — Advanced SQL &nbsp;|&nbsp; Beyond the Basics</b></summary>
<br/>

This chapter extends SQL beyond standard querying into more powerful and expressive constructs. It focuses on writing cleaner, more efficient, and more scalable queries.

Planned topics include:

- Common Table Expressions (CTEs)
- Recursive queries
- Query optimization techniques
- Indexing fundamentals

> This is where SQL starts to feel less like a query language and more like a system design tool.

</details>

<details>
<summary><b>⚙️ 04 — SQL Programming &nbsp;|&nbsp; Logic Inside the Database</b></summary>
<br/>

This section explores how logic can live inside the database itself, enabling automation and reusable data structures.

Planned topics include:

- Views (reusable query abstractions)
- Triggers (event-driven automation)
- Stored procedures (where supported)

> Instead of repeatedly querying data, this layer focuses on building reusable and intelligent database components.

</details>

<details>
<summary><b>🔍 05 — Case Studies &nbsp;|&nbsp; Real Engines, Real Problems</b></summary>
<br/>

Two database engines. Two different contexts. Same SQL discipline applied across both.

**SQLite — Intro Challenges**
Lightweight, file-based, and perfect for learning query logic without infrastructure overhead. These challenges focus on solving problems with clean, precise SQL.

**MySQL — Practice Queries**
The industry-standard relational engine. Practice queries here deal with more complex schemas, multi-table logic, and the specific syntax and functions MySQL brings to the table.

</details>

<details>
<summary><b>🚀 06 — Projects &nbsp;|&nbsp; Putting It All Together</b></summary>
<br/>

**Imaginary Product Project** — A self-contained database project built around a fictional product/business domain. Schema designed from scratch, populated with data, and queried to answer real business-style questions.

This is where the fundamentals stop being exercises and start being *applied*.

</details>

<details>
<summary><b>🐍 07 — SQL with Python &nbsp;|&nbsp; From Queries to Workflows</b></summary>
<br/>

SQL doesn’t exist in isolation in real-world systems. This chapter introduces integration with Python for building data workflows and analytical pipelines.

Planned topics include:

- Connecting to databases using Python
- Executing SQL queries programmatically
- Fetching and processing results
- Combining SQL with data analysis libraries

> This is the bridge between database querying and real-world data applications.

</details>

<details>
<summary><b>🏆 08 — Certifications &nbsp;|&nbsp; In Progress</b></summary>
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
mysql -u root -p your_database < 03_Case_Studies/MySQL/Practice_Queries/query.sql

# Run any .sql file in SQLite
sqlite3 database.db < 03_Case_Studies/SQLite/Intro_Challenges/challenge.sql
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
