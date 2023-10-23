select a.query_name, round(avg(a.quality),2) as quality,
round(sum(a.poor_query)*100/count(a.query_name),2) as poor_query_percentage
from (
select *, rating/position as quality, 
case 
    when rating<3 then 1
    else 0
end  as poor_query 
from Queries
) as a
group by a.query_name