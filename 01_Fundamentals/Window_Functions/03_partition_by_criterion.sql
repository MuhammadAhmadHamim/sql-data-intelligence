/*
A factory is building doors.
It needs to number the doors for each country and color combination that have a publication_year smaller than 2000.
Name this column row_num.

The doors should be numbered within each group in ascending order by their id. 
Doors without specs should be ignored. 
Sort the final result in ascending order by the id. 
*/
WITH joined_table AS(
    SELECT doors.id AS doors_id, doors.publication_year AS publication_year,
        doors_specs.country AS country,
            doors_specs.color AS color
    FROM doors
    JOIN doors_specs ON doors_id = doors_specs.id  
)

SELECT doors_id AS id, country, color,
    ROW_NUMBER() OVER(PARTITION BY country, color ORDER BY doors_id ASC) AS row_num 
FROM joined_table
WHERE publication_year < '2000'
ORDER BY doors_id;