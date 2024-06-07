with cte as (
    SELECT requester_id as id FROM RequestAccepted
    UNION ALL
    SELECT accepter_id as id FROM RequestAccepted
)

SELECT id, count(*) as num
FROM cte 
GROUP BY id 
ORDER BY num DESC
LIMIT 1