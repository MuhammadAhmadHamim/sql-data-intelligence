/*
Return id and a single column label formatted as '<BRAND> <model> - $<price>'.
The brand should be in upper case; the rest exactly as stored.
Order by id.

Example: 'APPLE iPhone - $999'.
*/
SELECT id,
        -- assemble label with ||
        UPPER(brand) || ' ' || model || ' - ' || '$' || price AS label
FROM products
ORDER BY id;