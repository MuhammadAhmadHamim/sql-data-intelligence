/*
Return id and the domain of each email (everything after the @) as domain.
Assume every email contains exactly one @.
Order by id.
*/
SELECT id,
        -- everything after the '@'
        SUBSTR(email, INSTR(email, '@') + 1) AS domain
FROM signups
ORDER BY id;