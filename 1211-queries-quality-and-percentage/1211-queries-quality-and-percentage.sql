/* Write your T-SQL query statement below */
Select 
    query_name,
    round(avg(cast(rating as decimal) / position),2) as quality,
    round(sum(cast(case when rating < 3 then 1 else 0 end as decimal)) * 100 / count(*),2) as poor_query_percentage
from Queries
group by query_name
