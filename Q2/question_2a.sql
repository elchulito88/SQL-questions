-- SQL code for Distinct Users

-- Q2a.
-- Yes, some users have the same email but their personal information
-- is different

select
count(distinct email) as "Unique Users"
from users
