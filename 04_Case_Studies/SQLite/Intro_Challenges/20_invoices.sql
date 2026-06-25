/*
Every code is in the format 'INV-<year>-<number>' (e.g. 'INV-2026-00042'). 

Return:
-> id
-> year: the four-digit year as a string, e.g. '2026'
-> customer_domain: the domain part of customer_email, in lower case

Order by id.
*/
SELECT id,
        -- year extracted from code
        SUBSTR(code, 5, 4) AS year,
        -- customer_domain from email
        LOWER(SUBSTR(customer_email, INSTR(customer_email, '@') + 1)) AS customer_domain
FROM invoices
ORDER BY id;