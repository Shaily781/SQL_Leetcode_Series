/* Write your T-SQL query statement below */
Select top 1 customer_number
from (
    select
        customer_number,
        count(customer_number) as num_cust
    From Orders
    group by customer_number) t
order by num_cust desc
