-- SQL code for Brand and Item Name with the highest price

select

a.category as Category
, a.item_name as "Item Name"
, a.brand as Brand
, a.department as Department
, max(a.retail_price) as "Max Price"

from

(
select *

from products
order by retail_price desc, category, item_name, brand, department

) a

group by a.category
order by a.retail_price desc


-- Brief Summary
  -- Woman
      -- Have the max price for 16 brand Items
      -- Brand item names are more expensive than men when it comes to sportswear
  -- Men
      -- Have the max price for 8 brand items
      -- Brand item names are more expensive than woman when comapring outwear & coats, and shorts.
      -- Almost half of the highest prices for the brand item names come from the same vendor "True Religion"
  -- Both
      -- Share 1 brand item price
        -- Active
