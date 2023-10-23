
select 
round(
sum(
    case
        when a.min_order_date = a.min_customer_pref_delivery_date then 1
        else 0
    end
)*100/count(*)
,2) as immediate_percentage
from (
select 
MIN(order_date) as min_order_date,
MIN(customer_pref_delivery_date) as min_customer_pref_delivery_date
from Delivery
group by  customer_id
) as a

