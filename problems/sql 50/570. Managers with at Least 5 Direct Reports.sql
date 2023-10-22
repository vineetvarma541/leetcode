select a.name
from (
select m.name, count(m.id) as count
from Employee e
inner join Employee m
on e.managerId = m.id
group by m.id
) as a
where a.count >=5
