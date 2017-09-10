-- SQL code for the Total Number of Orders for each Order Status

-- Q3
select

status as "Order Status"
, count(*) as "Total Orders"

from orders

group by 1

order by 2 desc
