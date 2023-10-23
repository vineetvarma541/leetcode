-- Write your MySQL query statement below

select
a.employee_id,  a.department_id
from
(
select *
from Employee
where primary_flag = 'Y'
union
select *
from Employee
group by employee_id
having count(*) = 1
) as a
order by employee_id
