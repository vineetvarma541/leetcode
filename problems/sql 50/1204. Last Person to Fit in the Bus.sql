
WITH CTE AS (
    SELECT 
        turn, person_name, weight,
        SUM(weight) OVER(ORDER BY turn ASC) AS tot_weight 
    FROM Queue
    ORDER BY turn
)

select q.person_name from Queue q
where q.turn = (select max(turn) from CTE where tot_weight <=1000 )