/*
Select all plants with a hue greater than 0.34 and add two numbering columns:

(i)  row_num_hue that will number the rows according to hue in ascending order

(ii) row_num_score that will number the rows by the following formula: rough*hue in descending order

Return only the id and the two numbering columns. Order the result by the plant id in ascending order
*/
WITH filtered_data AS (
    SELECT *
    FROM plants
    WHERE hue > 0.34
)

SELECT id,
    ROW_NUMBER() OVER(ORDER BY hue ASC) AS row_num_hue,
    ROW_NUMBER() OVER(ORDER BY rough * hue DESC) AS row_num_score
FROM filtered_data
ORDER BY id;