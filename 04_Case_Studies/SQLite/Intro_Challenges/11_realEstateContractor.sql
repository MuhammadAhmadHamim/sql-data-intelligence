/*
Some analysts forecast what is going to be the growth for real estate assets.
We want to check if their forecast is true. 

For each asset in the real_estate table, calculate the ratio between the value of a newer date to the value of an older date.
For example, if there is an asset whose value in 2022-01-01 was 5 and in 2022-05-01 was 10 then that ratio is 10/5 = 2.

Ignore all of the comparisons that the day difference between the two dates is smaller than 101.

There are many dates for each asset so there are many ratios to compare.
Keep only the biggest ratio for each asset.

Finally, divide this ratio with the matching forecast from the potential table (call this field ratio_forecast) 
and sort the results in descending order.

The final result should have the asset_id and ratio_forecast.
Keep only the assets where the ratio_forecast is bigger than 1.

Note: To get a decimal solution from divide operation (/) you sometimes need to multiply the numerator by 1.0.

For example, instead of a / b use a * 1.0 / b to get the decimal result (when a and b are variables)
*/
WITH ordered_table AS ( --CTE to order teh table through SELFJOIN and calculate the ratio along with the date condition
SELECT re1.asset_id, ((re2.value * 1.0) / re1.value) AS ratio --Multiplying 1.0 to numerator to get the decimal solution
FROM real_estate AS re1
JOIN real_estate AS re2 ON re1.asset_id = re2.asset_id
WHERE re2.date > re1.date AND JULIANDAY(re2.date) - JULIANDAY(re1.date) >= 101
-- The second date to be greater than first one to iterate forward along with the difference to be more than 101 days
), max_ratio_table AS ( --CTE to calculate the maximum ratio for each asset
SELECT asset_id, MAX(ratio) AS max_ratio
FROM ordered_table
GROUP BY asset_id
), joined_table AS ( --CTE to join the ordered_table of real_estate with potential using the mutual asset_id
SELECT max_ratio_table.asset_id AS asset_id,
       max_ratio_table.max_ratio AS ratio,
       potential.forecast AS forecast
FROM max_ratio_table
JOIN potential ON max_ratio_table.asset_id = potential.asset_id
)
SELECT asset_id, (ratio / forecast) AS ratio_forecast 
FROM joined_table
WHERE ratio_forecast > 1
ORDER BY ratio_forecast DESC