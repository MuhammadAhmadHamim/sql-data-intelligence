/*
In this challenge, we have creatures that want to find a significant other. 
We need to help them find their match.

Each creature has a preference that is represented as a number. 
If both creatures have a number that is close enough, they might be a good match.

Divide creatures into 3 groups based on their preference values, 
but only consider creatures that have legs (where has_legs = 'YES'). 
Return the creature_name, preference, and their group_number (1, 2, or 3). 
Order the results by preference in ascending order.
*/
SELECT creature_name, preference,
    NTILE(3) OVER(ORDER BY preference) AS group_number
FROM creatures
WHERE has_legs = 'YES'
ORDER BY preference ASC;