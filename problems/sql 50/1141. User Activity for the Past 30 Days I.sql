select a.day,  count(a.user_id) as active_users
from (
select *, activity_date as day 
from Activity
where 30 > datediff('2019-07-27', activity_date ) and datediff('2019-07-27', activity_date )>0
group by activity_date,user_id
) as a
group by day