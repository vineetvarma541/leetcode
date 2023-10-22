/*
First try to do the join with inner join, 
If it is not possible then try to fit your table to the left to do a left outer join,
for full join - union of left outer and right outer join.
very rarely you will have to do a right outer join.
*/

select product_name, year, price from Sales s inner join Product p on s.product_id = p.product_id 