
/*
Here we see a simple way to get rows on the left outer join  with out the intersection part.


*/


select customer_id , count(customer_id) as count_no_trans
from Visits v 
left outer join Transactions t 
on v.visit_id = t.visit_id
where t.transaction_id is null
group by customer_id
order by count_no_trans desc