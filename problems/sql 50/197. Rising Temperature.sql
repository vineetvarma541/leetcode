/*
1. self join conecpt 
2. condition for the join can be any true or false statement.
*/

select w2.id
from Weather w1
inner join Weather w2
on 1 = DATEDIFF(w2.recordDate,w1.recordDate)
where w2.temperature > w1.temperature