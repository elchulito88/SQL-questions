-- SQL code for the Total Sale of each User ID

-- Q4
select

a.first_name as "First Name"
, a.last_name as "Last Name"
, a.user_id as "User ID"
, concat('$',format(sum(b.sale_price),2)) as "Total Spent"

from

(
select

users.first_name
, users.last_name
, orders.user_id
, orders.status
, orders.id

from orders

inner join users
on orders.user_id = users.id

where 1 = 1
and orders.status != 'cancelled'

) a

inner join

(
select

order_id
, sale_price

from order_items

where 1 = 1
and returned_at is null or returned_at = ''

) b

on a.id = b.order_id

group by 3
order by round(sum(b.sale_price),2) desc
limit 100
