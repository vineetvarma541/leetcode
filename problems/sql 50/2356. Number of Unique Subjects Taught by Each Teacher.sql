select a.teacher_id , count(a.teacher_id) as cnt
from(
select teacher_id
from Teacher
group by teacher_id, subject_id
) as a
group by a.teacher_id