/*
For each match return:

-> id
-> conversion: goals * 1.0 / shots, but NULL when shots is 0 (use NULLIF)
-> verdict: 'win' when goals > 0, otherwise 'no goals' (use IIF)

Order by id.
*/
SELECT id,
        -- conversion using NULLIF
            (goals * 1.0) / NULLIF(shots, 0) AS conversion,
        -- verdict using IIF
            IIF(goals > 0, 'win', 'no goals') AS verdict
FROM matches
ORDER BY id