
select 
case 
when max(a.num) >0 then max(a.num)
else null
end as num
from (
select num, count(num) as count
from MyNumbers
group by num
order by num desc
) as a
where a.count = 1 