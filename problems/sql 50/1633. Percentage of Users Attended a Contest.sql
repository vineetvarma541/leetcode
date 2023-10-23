
with cte as
(
    select count(*) as count from Users
)

select contest_id , round((count(*)/c.count)*100,2) as percentage
from Register r , cte c
group by contest_id
order by percentage desc, contest_id