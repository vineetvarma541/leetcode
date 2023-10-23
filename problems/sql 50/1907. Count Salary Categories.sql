
with cte as
(
select 
case 
    when income<20000 then 'Low Salary'
    when income>=20000 and income<=50000  then 'Average Salary'
    else 'High Salary'
end as category
from Accounts
)


select b.category, sum(b.accounts_count) as accounts_count
from (
select a.category, count(a.category) as accounts_count
from cte as a
group by a.category
union
select  'Low Salary' as category , 0 as accounts_count
union
select  'Average Salary' as category , 0 as accounts_count
union
select  'High Salary' as category , 0 as accounts_count
) as b
group by b.category

