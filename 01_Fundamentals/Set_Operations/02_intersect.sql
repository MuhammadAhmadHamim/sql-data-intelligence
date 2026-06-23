/*
Return the emails that appear as active newsletter subscribers (active = 1) and as premium users on the 'pro' plan.
Order alphabetically.
*/

-- filter each side before INTERSECT
WITH filtered_newsletter AS (
    SELECT *
    FROM newsletter
    WHERE active = 1
), filtered_premium AS (
    SELECT *
    FROM premium
    WHERE plan = 'pro'
)

SELECT email FROM filtered_newsletter
INTERSECT
SELECT email FROM filtered_premium;