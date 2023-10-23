select a.month, a.country, 
count(a.month) as trans_count,
sum(a.approved_count) as approved_count,
sum(amount) as trans_total_amount,
sum(approved_amount) as approved_total_amount
from
(
select  *, 
DATE_FORMAT(trans_date, '%Y-%m') as month,
1 as trans_count,
case 
    when state = 'approved' then 1
    else 0
end as approved_count,
case
    when state = 'approved' then amount
    else 0
end as approved_amount
from Transactions
) as a
group by a.month, a.country

