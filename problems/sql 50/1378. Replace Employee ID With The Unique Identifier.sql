-- mysql sql

with cte_fulljoin as (
select u.unique_id, e.name from Employees e  right OUTER join EmployeeUNI u on e.id = u.id 
union
select u.unique_id, e.name from Employees e  left OUTER join EmployeeUNI u on e.id = u.id 
)
select * from cte_fulljoin where name is not null order by unique_id




-- oracle sql
select unique_id,name  from Employees e  FULL OUTER join EmployeeUNI u on e.id = u.id  where name is not null
