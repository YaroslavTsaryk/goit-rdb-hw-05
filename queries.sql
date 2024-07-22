use mydb;

select od.*, 
(select customer_id from orders o where o.id=od.order_id) customer_id
from order_details od;

select od.* from order_details od
where od.order_id in (select id from orders where shipper_id=3);

select od.order_id, avg(od.quantity) 
from (select * from order_details where quantity>10) od
group by od.order_id;

with temp as (select * from order_details where quantity>10)
select temp.order_id, avg(temp.quantity) 
from  temp
group by temp.order_id;

select quantity, Divide(quantity,2)  from order_details;

select quantity, Divide(quantity,0)  from order_details;