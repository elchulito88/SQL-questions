-- SQL code for identifying the duplicate users

-- Q2b.

select

email as "Email"
, first_name as "First Name"
, last_name as "Last Name"
, count(*) as "Duplicate Count"

from users

group by 1, 2, 3

having count(*) > 1

order by 4 desc
