-- ==========================================
-- Topic: Basic Data Retrieval
-- Commands: SELECT, SELECT DISTINCT
-- Source: Coddy.tech SQL Track
-- ==========================================

-- 1. Retrieving all columns from the 'employees' table
SELECT * FROM employees;

-- 2. Selecting specific columns (Name and Department)
SELECT first_name, department FROM employees;

-- 3. Finding unique job titles (Removing duplicates)
-- This is useful for seeing all available roles without repetition.
SELECT DISTINCT job_title FROM employees;

-- 4. Finding unique countries where our customers are located
SELECT DISTINCT country FROM customers;