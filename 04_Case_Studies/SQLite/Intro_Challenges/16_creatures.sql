/*
In this challenge, we have creatures that want to find a significant other.
We need to help them find their match.

Each creature has a preference value and either has legs or doesn't have legs.

Rules:

-> Creatures are matched ONLY with others sharing the same has_legs value
-> Within each group (has_legs true/false), order creatures by preference
-> Assign couple_matcher numbers using NTILE(total_creature_count/2)
-> Both groups will use the same couple_matcher range (1 to N)

Example: 10 total creatures (6 with legs, 4 without)

-> Creatures with legs: ranked by preference, assigned couple_matcher 1-5
-> Creatures without legs: ranked by preference, assigned couple_matcher 1-5

Result: Multiple separate couples can have the same couple_matcher number
*/
WITH num_couples AS (
    SELECT COUNT(*) / 2 AS total_couple_count
    FROM creatures
)
SELECT creature_name,
    NTILE(total_couple_count) OVER (PARTITION BY has_legs ORDER BY preference) AS couple_matcher
FROM creatures, num_couples
ORDER BY couple_matcher, creature_name;