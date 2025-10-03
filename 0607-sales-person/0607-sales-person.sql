/* Write your T-SQL query statement below */
Select name from SalesPerson
where sales_id not in 
(Select o.sales_id 
from Orders o left join Company c on c.com_id = o.com_id
where c.name = 'RED')