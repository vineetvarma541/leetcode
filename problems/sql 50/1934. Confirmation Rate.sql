
select  a.user_id, ROUND(sum(a.confirmed_action)/ sum(a.total), 2)  as confirmation_rate
from
(
    select s.user_id,
    case
        when action = 'confirmed' then 1
        else 0 
    end as confirmed_action,
    1 as total
    from Signups s
    left outer join Confirmations c
    on s.user_id = c.user_id
) as a
group by a.user_id



