/*
Write a SQL query to analyze the sequence of door colors within each country, ordered by publication year.
For each door space, show:

-> The country
-> The color
-> The publication year
-> A number representing the order of colors within each country based on publication year.
    Call this column color_sequence_number
*/
WITH joined_table AS (
    SELECT doors.id AS doors_id, doors.publication_year AS publication_year,
        doors_specs.country AS country,
            doors_specs.color AS color
    FROM doors
    JOIN doors_specs ON doors_id = doors_specs.id  
)

SELECT country, color, publication_year,
    ROW_NUMBER() OVER (PARTITION BY country ORDER BY publication_year) AS color_sequence_number
FROM joined_table;