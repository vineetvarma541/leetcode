select e2.employee_id, e2.name, count(e1.employee_id) as reports_count, round(sum(e1.age)/count(e1.employee_id),0) as average_age
from Employees e1
left join Employees e2
on e1.reports_to = e2.employee_id 
where e2.employee_id is not null
group by e2.employee_id 
order by employee_id