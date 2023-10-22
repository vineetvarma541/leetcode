-- 1148. Article Views I
-- using CTE - coommon table expressions.


with cte_views_id as
(select distinct(author_id) as id from Views where author_id = viewer_id )

select id from cte_views_id order by id;