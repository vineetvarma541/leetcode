select 
  product_id, 
  year AS first_year, 
  quantity, 
  price 
FROM
sales
where (product_id ,year) in
(
select product_id , min(year) as year
from Sales
group by product_id
)
