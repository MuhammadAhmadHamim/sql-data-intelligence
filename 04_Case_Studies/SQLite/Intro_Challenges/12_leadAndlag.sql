/*
We want to track how air conditioner performance changes over time.
Your task is to find air conditioners that had declining performance between months.

Here's what to do:

-> For each air conditioner in each month,
    calculate its performance ratio by dividing the average efficiency by the average strength 
    using AVG(efficiency)/AVG(strength), grouped by id and month

-> Compare each air conditioner's current month performance with its performance two months later

-> Find cases where the current performance is significantly better than future performance 
    (current ratio ÷ future ratio > 0.5)

-> Return the air conditioner id, month, and the comparison ratio for these cases
*/
WITH calculated_current_ratio AS (
    SELECT id, month,
        AVG(efficiency)/AVG(strength) AS current_ratio
    FROM air_conditioners
    GROUP BY id, month
), calculated_future_ratio AS (
    SELECT id, month,current_ratio,
        LEAD(current_ratio, 2) OVER(PARTITION BY id ORDER BY month) AS future_ratio
    FROM calculated_current_ratio 
)

SELECT id, month,
    current_ratio / future_ratio AS ratio_two_months
FROM calculated_future_ratio
WHERE current_ratio / future_ratio > 0.5; 