select a.class
from(
select class, count(student) as count
from Courses
group by class
) as a
where count>=5