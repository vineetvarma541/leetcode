select a.product_id, 
case
    when a.units is null then 0
    else round(sum(total_sales)/sum(units), 2) 
end as average_price
from 
(
    select  p.product_id ,u.units, u.units * p.price as total_sales 

    from Prices p
    left  join UnitsSold u
    on p.product_id = u.product_id 
    where u.product_id is null or (u.purchase_date between   p.start_date and p.end_date ) 
) as a
group by a.product_id