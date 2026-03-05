/*
Challenge 3: The "Total Audit" (FULL OUTER JOIN)
The Setup: You have a project_leads table and a budgets table.

Goal: Create a master list of all project_names and their amount.

The Catch: You want to see projects that don't have budgets yet, AND budgets that haven't been assigned to a project yet.
*/
SELECT p.names AS project_names, b.amount 
FROM project_leads AS p
LEFT JOIN budgets AS b ON p.id = b.project_id
UNION
SELECT p.names AS project_names, b.amount 
FROM project_leads AS p
RIGHT JOIN budgets AS b ON p.id = b.project_id;
-- One ORDER BY to rule them all

--Note : FULL OUTER JOIN doesn't work in mysql and sqlite so to we access it indirectly through this syntax