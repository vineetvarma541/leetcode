
/*
we can do this with cross join also 
*/

with
cte1 as (
    select * 
from  Students st
join Subjects su
),

cte2 as (
select student_id,subject_name , count(student_id) as attended_exams
from Examinations e
group by student_id, subject_name
)

select cte1.student_id , cte1.student_name , cte1.subject_name,
case
    when (attended_exams is null) then 0
    ELSE attended_exams
END as attended_exams
from cte1
left outer join cte2
on cte1.student_id = cte2.student_id and cte1.subject_name = cte2.subject_name
order by cte1.student_id , cte1.subject_name

# select *
# from cte2