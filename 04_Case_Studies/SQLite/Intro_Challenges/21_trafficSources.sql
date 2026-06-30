/*
converted is 1 when the visitor signed up, 0 otherwise. For each day return:

-> day
-> visits: total rows that day
-> organic: visits with source = 'organic'
-> paid: visits with source = 'paid'
-> signups: total converted that day

Order by day.
*/
SELECT day,
        COUNT(*) AS visits,
        -- organic, paid, signups
        SUM(CASE WHEN source = 'organic' THEN 1 ELSE 0 END) AS organic,
        SUM(CASE WHEN source = 'paid' THEN 1 ELSE 0 END) AS paid,
        SUM(converted) AS signups
FROM visits
GROUP BY day
ORDER BY day;